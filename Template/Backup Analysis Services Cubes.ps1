[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.AnalysisServices")
$ServerName = "XSW-00-ASH01"
$BackupPath = "\\XSW-000-SQLBK01.xswhealth.nhs.uk\SQLBackup"

$Dt = "_olap_backup_for_migration"

# Make sure that the backup folder exist.
$BackupLocation = "$BackupPath\$ServerName\OLAP"
If (!(Test-Path $BackupLocation))
{
 New-Item -ItemType Directory -Force -Path $BackupLocation
}

$Server = New-Object Microsoft.AnalysisServices.Server
$Server.Connect($ServerName)

# Loop thru each database within the SSAS server.
foreach ($Database in $Server.Databases)
{
 $DatabaseName = $Database.Name
 $BackupFile =  $BackupLocation + "\" + $DatabaseName + "_" + $dt + ".abf"

 Write-Host "Starting to backup $DatabaseName ..." -ForegroundColor Green
 Backup-ASDatabase -Server $ServerName -BackupFile $BackupFile -Name $DatabaseName -ApplyCompression -ErrorAction Stop
 Write-Host "$DatabaseName has been backed up successfully." -ForegroundColor Green
}

The term 'Backup-ASDatabase' is not recognized as the name of a cmdlet, function, script file, or opera
ck the spelling of the name, or if a path was included, verify that the path is correct and try again.
 .\'Backup Analysis Services Cubes.ps1'
Backup-ASDatabase -Server ASHTEST01 -BackupFile XSW-000-SQLBK01.xswhealth.nhs.uk\SQLBackup\XSW-00-ASHTEST01\OLAP\SEM_Cube.abf -Name SEM_Cube -ApplyCompression -ErrorAction Stop
Import-Module SQLPS
Import-module sqlascmdlets
Get-command -module  SQLPS
Get-command -module SQLASCmdlets

XSW-000-SQLBK01.xswhealth.nhs.uk\SQLBackup\XSW-00-ASHTEST01\OLAP\SEM_Cube.abf -Name SEM_Cube -ApplyCompression -ErrorAction Stop
Import-Module SQLPS
XSW-000-SQLBK01.xswhealth.nhs.uk\SQLBackup\XSW-00-ASHTEST01\OLAP\SEM_Cube.abf -Name SEM_Cube -ApplyCompression -ErrorAction Stop
Import-Module SQLPS

XSW-000-SQLBK01.xswhealth.nhs.uk\SQLBackup\XSW-00-ASHTEST01\OLAP\SEM_Cube.abf -Name SEM_Cube -ApplyCompression -ErrorAction Stop
Import-Module SQLPS
SEM_Cube__olap_backup_for_migration.abf
Starting to backup SEM_Cube ...
Backup-ASDatabase : File system error: The following error occurred during a file operation:  The specified ne
e is no longer available. . (\\XSW-000-SQLBK01.xswhealth.nhs.uk\SQLBackup\XSW-00-ASHTEST01\OLAP\SEM_Cube__olap
or_migration.abf).
At C:\Users\adm-ravneet.kaur\Desktop\Backup Analysis Services Cubes.ps1:24 char:19
+  Backup-ASDatabase <<<<  -Server $ServerName -BackupFile $BackupFile -Name $DatabaseName -ApplyCompression -
on Stop
    + CategoryInfo          : InvalidOperation: (:) [Backup-ASDatabase], OperationException
    + FullyQualifiedErrorId : InvalidOperation,Microsoft.AnalysisServices.PowerShell.Cmdlets.BackupASDatabase
 .\'Backup Analysis Services Cubes.ps1'
