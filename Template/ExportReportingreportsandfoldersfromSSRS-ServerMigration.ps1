#------------------------------------------------------
#Prerequisites
#Install-Module -Name ReportingServicesTools
#------------------------------------------------------

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force

Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/Microsoft/ReportingServicesTools/master/Install.ps1)

#Install-Module -Name ReportingServicesTools            
            
Invoke-Expression (Invoke-WebRequest https://aka.ms/rstools)

Get-Command -Module ReportingServicesTools

#Lets get security on all folders in a single instance
#------------------------------------------------------
#Declare SSRS URI
$sourceRsUri = 'http://xsw-000-ST03/ReportServer/ReportService2010.asmx?wsdl'

#Declare Proxy so we dont need to connect with every command
$proxy = New-RsWebServiceProxy -ReportServerUri $sourceRsUri

#Output ALL Catalog items to file system
Out-RsFolderContent -Proxy $proxy -RsFolder / -Destination 'E:\Reporting' -Recurse


