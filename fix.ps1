$z = 'data:image/png;base64,' + [Convert]::ToBase64String([IO.File]::ReadAllBytes('img\zoom.png'))
$e = 'data:image/png;base64,' + [Convert]::ToBase64String([IO.File]::ReadAllBytes('img\examen.png'))
$g = 'data:image/png;base64,' + [Convert]::ToBase64String([IO.File]::ReadAllBytes('img\gps.png'))
$content = Get-Content -Raw -Path 'script.js' -Encoding UTF8
$content = $content.Replace("'img/zoom.png'", "'$z'")
$content = $content.Replace("'img/examen.png'", "'$e'")
$content = $content.Replace("'img/gps.png'", "'$g'")
Set-Content -Path 'script.js' -Value $content -Encoding UTF8
