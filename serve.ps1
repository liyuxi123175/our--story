$ErrorActionPreference = "Stop"

$port = 8080
$root = Split-Path -Parent $MyInvocation.MyCommand.Path

try {
  $ipv4 = (
    Get-NetIPAddress -AddressFamily IPv4 |
    Where-Object {
      $_.IPAddress -notlike "127.*" -and
      $_.IPAddress -notlike "169.254.*" -and
      $_.PrefixOrigin -ne "WellKnown"
    } |
    Select-Object -First 1 -ExpandProperty IPAddress
  )
} catch {
  $ipv4 = $null
}

Write-Host ""
Write-Host "Static site root: $root"
Write-Host "Desktop: http://localhost:$port/"
if ($ipv4) {
  Write-Host "Mobile : http://$ipv4`:$port/"
} else {
  Write-Host "Mobile : Use your computer's LAN IPv4 address on port $port."
}
Write-Host ""
Write-Host "Keep this window open while browsing the site."
Write-Host ""

Set-Location $root
py -m http.server $port
