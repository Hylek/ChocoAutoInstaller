# Daniel Cumbor WonderScript
# Created with effort in 2021

Write-Output Daniel Cumbor WonderScript V1

# Check if Chocolatey is installed already, if not install it.
$chocoversion = powershell choco -v
if(-not($chocoversion)){
    Write-Output "Chocolatey is not installed, installing now"
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
else{
    Write-Output "Chocolatey Version $chocoversion is already installed!"
}

Write-Output Configuring Chocolatey
choco feature enable -n allowGlobalConfirmation

# Core Programs
Write-Output Installing Core Programs
choco install brave
choco install discord
choco install steam
choco install git
choco install 7zip
choco install nordpass
choco install tidal

# Developer Programs
Write-Output Installing Developer Programs
choco install vscode
choco install jetbrains-rider
choco install nodejs
choco install firacode
choco install unity-hub
choco install slack
choco install postman

choco feature disable -n allowGlobalConfirmation
Write-Output All done! Your Welcome!
