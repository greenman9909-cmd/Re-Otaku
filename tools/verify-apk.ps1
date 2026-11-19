# Comprueba que un APK de RE:OTAKU es el publicado: hash contra checksums.txt y, si hay apksigner, firma.
# Uso: .\tools\verify-apk.ps1 -Apk .\REOTAKU-2.1.19-QA.apk
param(
  [Parameter(Mandatory = $true)][string]$Apk
)

if (-not (Test-Path $Apk)) { Write-Error "No existe el archivo: $Apk"; exit 2 }

$name = Split-Path $Apk -Leaf
$sums = Join-Path (Split-Path $PSScriptRoot -Parent) "checksums.txt"
$got = (Get-FileHash $Apk -Algorithm SHA256).Hash.ToLower()
$want = $null

if (Test-Path $sums) {
  foreach ($line in Get-Content $sums) {
    $parts = $line -split '\s+'
    if ($parts.Count -ge 2 -and $parts[1] -eq $name) { $want = $parts[0].ToLower() }
  }
}

Write-Host "archivo : $name ($((Get-Item $Apk).Length) bytes)"
Write-Host "sha256  : $got"

if (-not $want) {
  Write-Host "aviso   : $name no aparece en checksums.txt (¿versión no publicada?)" -ForegroundColor Yellow
  exit 3
}

Write-Host "esperado: $want"
if ($got -eq $want) {
  Write-Host "resultado: HASH CORRECTO" -ForegroundColor Green
} else {
  Write-Host "resultado: NO COINCIDE — no instales este archivo" -ForegroundColor Red
  exit 1
}

$signer = Get-Command apksigner -ErrorAction SilentlyContinue
if ($signer) {
  Write-Host "--- firma ---"
  & $signer.Source verify --print-certs $Apk | Select-Object -First 4
} else {
  Write-Host "nota: apksigner no está en el PATH; instala Android build-tools para ver el certificado"
}
