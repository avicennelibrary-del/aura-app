$port = 8080
$root = "C:\Users\User\Documents\Zoom"
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")
$listener.Start()
Write-Host "Serveur démarré sur http://localhost:$port/"
Write-Host "Téléchargez le fichier: http://localhost:$port/AURA_Filtres_Multi_V4_FINAL.html"
Write-Host "Appuyez sur Ctrl+C pour arrêter"

while ($listener.IsListening) {
    $ctx = $listener.GetContext()
    $req = $ctx.Request
    $res = $ctx.Response
    
    $path = $req.Url.AbsolutePath.TrimStart('/')
    if ($path -eq '' -or $path -eq '/') { $path = 'AURA_Filtres_Multi_V4_FINAL.html' }
    
    $file = Join-Path $root $path
    if (Test-Path $file -PathType Leaf) {
        $bytes = [System.IO.File]::ReadAllBytes($file)
        $ext = [System.IO.Path]::GetExtension($file)
        $mimeMap = @{ '.html' = 'text/html; charset=utf-8'; '.css' = 'text/css'; '.js' = 'application/javascript' }
        $res.ContentType = if ($mimeMap.ContainsKey($ext)) { $mimeMap[$ext] } else { 'application/octet-stream' }
        $res.ContentLength64 = $bytes.Length
        $res.OutputStream.Write($bytes, 0, $bytes.Length)
    } else {
        $res.StatusCode = 404
        $msg = [System.Text.Encoding]::UTF8.GetBytes("404 - Fichier non trouvé")
        $res.OutputStream.Write($msg, 0, $msg.Length)
    }
    $res.Close()
}
