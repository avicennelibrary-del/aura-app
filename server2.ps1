$port = 8081
$root = 'C:\Users\User\Documents\Zoom'
$server = New-Object System.Net.HttpListener
$server.Prefixes.Add("http://localhost:$port/")
$server.Start()
Write-Host "========================================"
Write-Host "  AURA - Serveur NOUVELLE PALETTE !"
Write-Host "========================================"
Write-Host "  URL : http://localhost:$port/"
Write-Host "  Ctrl+C pour arreter"
Write-Host "========================================"
while ($server.IsListening) {
    $ctx = $server.GetContext()
    $req = $ctx.Request
    $res = $ctx.Response
    $path = $req.Url.AbsolutePath.TrimStart('/')
    if ($path -eq '' -or $path -eq '/') { $path = 'AURA_Filtres_Multi_V4_FINAL.html' }
    $file = Join-Path $root $path
    if (Test-Path $file -PathType Leaf) {
        $bytes = [System.IO.File]::ReadAllBytes($file)
        $ext = [System.IO.Path]::GetExtension($file)
        $mime = switch ($ext) {
            '.html' { 'text/html; charset=utf-8' }
            '.css'  { 'text/css' }
            '.js'   { 'application/javascript' }
            '.png'  { 'image/png' }
            '.jpg'  { 'image/jpeg' }
            '.svg'  { 'image/svg+xml' }
            default { 'application/octet-stream' }
        }
        $res.ContentType = $mime
        $res.Headers.Add("Cache-Control", "no-cache, no-store, must-revalidate")
        $res.Headers.Add("Pragma", "no-cache")
        $res.Headers.Add("Expires", "0")
        $res.ContentLength64 = $bytes.Length
        $res.OutputStream.Write($bytes, 0, $bytes.Length)
        Write-Host "  OK $([System.IO.Path]::GetFileName($file)) ($($bytes.Length) bytes)"
    } else {
        $res.StatusCode = 404
        $msg = [System.Text.Encoding]::UTF8.GetBytes("404")
        $res.OutputStream.Write($msg, 0, $msg.Length)
    }
    $res.Close()
}