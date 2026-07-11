$port = 8080
$root = 'C:\Users\User\Documents\Zoom'
$server = New-Object System.Net.HttpListener
$server.Prefixes.Add("http://localhost:$port/")
$server.Start()
Write-Host "AURA Secure - http://localhost:$port/"

# Rate limiting: max 100 requests per IP per minute
$rateLimit = @{}
$rateWindow = 60

function Test-RateLimit($ip) {
    $now = Get-Date
    if (-not $rateLimit.ContainsKey($ip)) {
        $rateLimit[$ip] = @()
    }
    $rateLimit[$ip] = $rateLimit[$ip] | Where-Object { ($now - $_).TotalSeconds -lt $rateWindow }
    if ($rateLimit[$ip].Count -ge 100) { return $false }
    $rateLimit[$ip] += $now
    return $true
}

function Test-SafePath($path) {
    if ($path -match '\.\.' -or $path -match '[\x00-\x1f]' -or $path -match '%00') { return $false }
    if ($path -match '^/' -or $path -match '\\') { return $false }
    $fullPath = [System.IO.Path]::GetFullPath((Join-Path $root $path))
    $rootFull = [System.IO.Path]::GetFullPath($root)
    if (-not $fullPath.StartsWith($rootFull)) { return $false }
    return $true
}

while ($server.IsListening) {
    $ctx = $server.GetContext()
    $req = $ctx.Request
    $res = $ctx.Response
    $ip = $req.RemoteEndPoint.Address.ToString()

    if (-not (Test-RateLimit $ip)) {
        $res.StatusCode = 429
        $msg = [System.Text.Encoding]::UTF8.GetBytes("Rate limit exceeded. Try again later.")
        $res.Headers.Add("Retry-After", "60")
        $res.OutputStream.Write($msg, 0, $msg.Length)
        $res.Close()
        continue
    }

    $path = $req.Url.AbsolutePath.TrimStart('/')
    if ($path -eq '' -or $path -eq '/') { $path = 'AURA_Filtres_Multi_V4_FINAL.html' }

    if (-not (Test-SafePath $path)) {
        $res.StatusCode = 403
        $msg = [System.Text.Encoding]::UTF8.GetBytes("403 Forbidden - Access denied")
        $res.OutputStream.Write($msg, 0, $msg.Length)
        $res.Close()
        continue
    }

    $file = Join-Path $root $path
    if (Test-Path $file -PathType Leaf) {
        $ext = [System.IO.Path]::GetExtension($file).ToLower()

        # Block sensitive files
        $blocked = @('.env','.git','.config','.bak','.sql','.log','.key','.pem','.env.local')
        if ($blocked -contains $ext) {
            $res.StatusCode = 403
            $msg = [System.Text.Encoding]::UTF8.GetBytes("403 Forbidden")
            $res.OutputStream.Write($msg, 0, $msg.Length)
            $res.Close()
            continue
        }

        $bytes = [System.IO.File]::ReadAllBytes($file)
        $mime = switch ($ext) {
            '.html' { 'text/html; charset=utf-8' }
            '.css'  { 'text/css; charset=utf-8' }
            '.js'   { 'application/javascript; charset=utf-8' }
            '.json' { 'application/json; charset=utf-8' }
            '.png'  { 'image/png' }
            '.jpg'  { 'image/jpeg' }
            '.jpeg' { 'image/jpeg' }
            '.gif'  { 'image/gif' }
            '.svg'  { 'image/svg+xml' }
            '.ico'  { 'image/x-icon' }
            '.woff' { 'font/woff' }
            '.woff2'{ 'font/woff2' }
            default { 'application/octet-stream' }
        }

        # Security Headers
        $res.ContentType = $mime
        $res.Headers.Add("X-Content-Type-Options", "nosniff")
        $res.Headers.Add("X-Frame-Options", "DENY")
        $res.Headers.Add("X-XSS-Protection", "1; mode=block")
        $res.Headers.Add("Referrer-Policy", "strict-origin-when-cross-origin")
        $res.Headers.Add("Permissions-Policy", "camera=(), microphone=(), geolocation=()")
        $res.Headers.Add("Content-Security-Policy", "default-src 'self' 'unsafe-inline' 'unsafe-eval' https:; img-src 'self' data: blob: https:; font-src 'self' https: data:; connect-src 'self' https://*.supabase.co https://api.groq.com wss://*.supabase.co https://cdn.jsdelivr.net https://cdnjs.cloudflare.com;")
        $res.Headers.Add("Strict-Transport-Security", "max-age=31536000; includeSubDomains")

        # Cache control
        if ($ext -eq '.html') {
            $res.Headers.Add("Cache-Control", "no-cache, no-store, must-revalidate")
            $res.Headers.Add("Pragma", "no-cache")
            $res.Headers.Add("Expires", "0")
        } else {
            $res.Headers.Add("Cache-Control", "public, max-age=86400")
        }

        $res.ContentLength64 = $bytes.Length
        $res.OutputStream.Write($bytes, 0, $bytes.Length)
    } else {
        $res.StatusCode = 404
        $res.Headers.Add("X-Content-Type-Options", "nosniff")
        $msg = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found")
        $res.OutputStream.Write($msg, 0, $msg.Length)
    }
    $res.Close()
}
