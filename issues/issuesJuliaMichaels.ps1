Remove-Item .\nir -Force -Recurse
Remove-Item .\nir.zip -Force

$nirURL = "http://www.nirsoft.net/utils/nircmd.zip"
$client = new-object System.Net.WebClient
$client.DownloadFile($nirURL,"nir.zip")

Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

Unzip ".\nir.zip" ".\nir"

.\nir\nircmd.exe setsysvolume 65000
.\nir\nircmd.exe mutesysvolume 0
start https://www.youtube.com/watch?v=biNFM2up81c