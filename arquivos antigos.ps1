$path = "C:\Caminho\Para\Pasta"
$days = 30
Get-ChildItem -Path $path -Recurse | Where-Object {
    $_.LastWriteTime -lt (Get-Date).AddDays(-$days)
} | Remove-Item -Force
Write-Output "Arquivos mais antigos que $days dias foram deletados."
