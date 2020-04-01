#Set Execution Policy
Set-ExecutionPolicy RemoteSigned -Force

# Install Nav Container Helper Module
Install-Module -Name navcontainerhelper

$imageName = "mcr.microsoft.com/businesscentral/sandbox:16.0.11240.11946-es-ltsc2019"
$containerName = "BC16Wave1"
$auth = "UserPassword"
$credential = New-Object pscredential 'admin', (ConvertTo-SecureString -String 'P@ssword1' -AsPlainText -Force)
$licenseFile = "D:\VSS\6062229.flf"

New-BCContainer -accept_eula `
                -imageName $imageName `
                -containerName $containerName `
                -auth $auth `
                -credential $credential `
                -licenseFile $licenseFile `
                -updateHosts `
                -includeAL `
                -memoryLimit 16G `
                -ACCEPT_OUTDATED