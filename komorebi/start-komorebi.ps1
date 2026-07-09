Start-Sleep -Seconds 5

$komorebic = "C:\Program Files\komorebi\bin\komorebic.exe"

if (Test-Path $komorebic) {
    & $komorebic start
}