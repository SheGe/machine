# Initialize Starship
$StarshipVersion = starship --version
if ($null -ne $StarshipVersion -and $StarshipVersion -ne "") {
    Write-Host "Initializing Starship... " -NoNewline
    Invoke-Expression (&starship init powershell)
    Write-Host "Done!" -ForegroundColor Green
}