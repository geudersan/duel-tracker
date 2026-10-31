# Wraps duel-tracker.html (the artifact source, which has no document skeleton)
# into docs/index.html, the standalone page GitHub Pages serves.
$root = $PSScriptRoot
$body = Get-Content -Raw -Encoding utf8 (Join-Path $root "duel-tracker.html")
$head = @'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="theme-color" content="#1A1920">
<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}img{max-width:100%}</style>
</head>
<body>
'@
$out = Join-Path $root "docs"
New-Item -ItemType Directory -Force $out | Out-Null
$utf8 = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText((Join-Path $out "index.html"), $head + $body + "`n</body>`n</html>`n", $utf8)
Write-Output "Built docs/index.html"
