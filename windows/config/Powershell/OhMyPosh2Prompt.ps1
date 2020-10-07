# Load oh-my-posh
$Global:OhMyPoshInstalled = (Get-Module -ListAvailable -Name oh-my-posh)
if ($Global:OhMyPoshInstalled) {
    Write-Host "Initializing oh-my-posh... " -NoNewline
    Import-Module oh-my-posh
    Set-Theme Paradox
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUserDeclaredVarsMoreThanAssignments', '', Scope='Function')]
    $DefaultUser = "$env:USERNAME"
    $ThemeSettings.PromptSymbols.PromptIndicator = [char]::ConvertFromUtf32(0x000003BB)
    Write-Host "Done!" -ForegroundColor Green
}
else {
    Write-Host "The oh-my-posh module has not been installed." -ForegroundColor Red
}