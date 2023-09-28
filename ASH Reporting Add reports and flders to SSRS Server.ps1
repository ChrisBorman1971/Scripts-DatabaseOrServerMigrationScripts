#COMMUNITY PROVIDER
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path / -Name "Community Provider" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Community Provider\" -Destination "/Community Provider" -Verbose

#FOLDERS WITHIN COMMUNITY PROVIDER

New-RsFolder -ReportServerUri http://localhost/ReportServer -Path "/Community Provider" -FolderName "Activity" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path "/Community Provider" -FolderName "Avoided Admissions" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path "/Community Provider" -FolderName "CIDS Reporting" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path "/Community Provider" -FolderName "Clinical" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path "/Community Provider" -FolderName "Data Quality" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path "/Community Provider" -FolderName "Diagnosis" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path "/Community Provider" -FolderName "Discharge" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path "/Community Provider" -FolderName "Equality of Access" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path "/Community Provider" -FolderName "GP Practice Reporting" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path "/Community Provider" -FolderName "Locality" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path "/Community Provider" -FolderName "Productivity" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path "/Community Provider" -FolderName "Provider" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path "/Community Provider" -FolderName "Referral" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path "/Community Provider" -FolderName "Team Manager Reports" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path "/Community Provider" -FolderName "Waiting Times Monitoring" -Verbose


Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Community Provider\Activity\" -Destination "/Community Provider/Activity" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Community Provider\Avoided Admissions\" -Destination "/Community Provider/Avoided Admissions" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Community Provider\CIDS Reporting\" -Destination "/Community Provider/CIDS Reporting" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Community Provider\Clinical\" -Destination "/Community Provider/Clinical" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Community Provider\Data Quality\" -Destination "/Community Provider/Data Quality" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Community Provider\Diagnosis\" -Destination "/Community Provider/Diagnosis" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Community Provider\Discharge\" -Destination "/Community Provider/Discharge" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Community Provider\Equality of Access\" -Destination "/Community Provider/Equality of Access" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Community Provider\GP Practice Reporting\" -Destination "/Community Provider/GP Practice Reporting" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Community Provider\Locality\" -Destination "/Community Provider/Locality" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Community Provider\Productivity\" -Destination "/Community Provider/Productivity" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Community Provider\Provider\" -Destination "/Community Provider/Provider" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Community Provider\Referral\" -Destination "/Community Provider/Referral" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Community Provider\Team Manager Reports\" -Destination "/Community Provider/Team Manager Reports" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Community Provider\Waiting Times Monitoring\" -Destination "/Community Provider/Waiting Times Monitoring" -Verbose



#Data Sources
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path / -Name "Data Sources" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Data Sources\" -Destination "/Data Sources" -Verbose


#Data Sets
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path / -Name "Datasets" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Datasets\" -Destination "/Datasets" -Verbose


#FOLDERS WITHIN DATASETS
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/Datasets" -FolderName "CCI" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/Datasets" -FolderName "CIDS" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/Datasets" -FolderName "TRAC" -Verbose

Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Datasets\CCI\" -Destination "/Datasets/CCI" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Datasets\CIDS\" -Destination "/Datasets/CIDS" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Datasets\TRAC\" -Destination "/Datasets/TRAC" -Verbose


#Intellgence Point
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path / -Name "IntelligencePoint" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\IntelligencePoint\" -Destination "/IntelligencePoint" -Verbose


#FOLDERS WITHIN Intellgence Point

New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/IntelligencePoint" -FolderName "AEC Pathways" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/IntelligencePoint" -FolderName "Ambulance Patient Transport" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/IntelligencePoint" -FolderName "Data Quality" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/IntelligencePoint" -FolderName "Dementia" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/IntelligencePoint" -FolderName "Exception Reporting" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/IntelligencePoint" -FolderName "Hospital Activity" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/IntelligencePoint" -FolderName "Prescribing" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/IntelligencePoint" -FolderName "Risk Profiling DES" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/IntelligencePoint" -FolderName "Risk Stratification" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/IntelligencePoint" -FolderName "RSS" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/IntelligencePoint" -FolderName "Urgent Care" -Verbose

Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\IntelligencePoint\AEC Pathways\" -Destination "/IntelligencePoint/AEC Pathways" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\IntelligencePoint\Ambulance Patient Transport\" -Destination "/IntelligencePoint/Ambulance Patient Transport" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\IntelligencePoint\Data Quality\" -Destination "/IntelligencePoint/Data Quality" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\IntelligencePoint\Dementia\" -Destination "/IntelligencePoint/Dementia" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\IntelligencePoint\Exception Reporting\" -Destination "/IntelligencePoint/Exception Reporting" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\IntelligencePoint\Hospital Activity\" -Destination "/IntelligencePoint/Hospital Activity" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\IntelligencePoint\Prescribing\" -Destination "/IntelligencePoint/Prescribing" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\IntelligencePoint\Risk Profiling DES\" -Destination "/IntelligencePoint/Risk Profiling DES" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\IntelligencePoint\Risk Stratification\" -Destination "/IntelligencePoint/Risk Stratification" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\IntelligencePoint\RSS\" -Destination "/IntelligencePoint/RSS" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\IntelligencePoint\Urgent Care\" -Destination "/IntelligencePoint/Urgent Care" -Verbose


#Live Testing
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path / -Name "LIVE TESTING" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\LIVE TESTING\" -Destination "/LIVE TESTING" -Verbose

New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/LIVE TESTING" -FolderName "Datasets" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/LIVE TESTING" -FolderName "ONE CARE" -Verbose

Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\LIVE TESTING\Datasets\" -Destination "/LIVE TESTING/Datasets" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\LIVE TESTING\ONE CARE\" -Destination "/LIVE TESTING/ONE CARE" -Verbose


#PCT Commissioner
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path / -Name "PCT Commissioner" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\PCT Commissioner\" -Destination "/PCT Commissioner" -Verbose


#FOLDERS WITHIN PCT Commissioner

New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/PCT Commissioner" -FolderName "Ambulance Patient Transport" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/PCT Commissioner" -FolderName "Ambulatory Emergency Care Pathways" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/PCT Commissioner" -FolderName "Clinical Commissioning Intelligence" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/PCT Commissioner" -FolderName "Data Quality" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/PCT Commissioner" -FolderName "Dementia" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/PCT Commissioner" -FolderName "Exception Reporting" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/PCT Commissioner" -FolderName "Referral Support Services KPIs" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/PCT Commissioner" -FolderName "Revascularisation" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/PCT Commissioner" -FolderName "Risk Profiling DES" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/PCT Commissioner" -FolderName "Risk Stratification" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/PCT Commissioner" -FolderName "Urgent Care" -Verbose

Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\PCT Commissioner\Ambulance Patient Transport\" -Destination "/PCT Commissioner/Ambulance Patient Transport" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\PCT Commissioner\Ambulatory Emergency Care Pathways\" -Destination "/PCT Commissioner/Ambulatory Emergency Care Pathways" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\PCT Commissioner\Clinical Commissioning Intelligence\" -Destination "/PCT Commissioner/Clinical Commissioning Intelligence" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\PCT Commissioner\Data Quality\" -Destination "/PCT Commissioner/Data Quality" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\PCT Commissioner\Dementia\" -Destination "/PCT Commissioner/Dementia" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\PCT Commissioner\Exception Reporting\" -Destination "/PCT Commissioner/Exception Reporting" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\PCT Commissioner\Referral Support Services KPIs\" -Destination "/PCT Commissioner/Referral Support Services KPIs" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\PCT Commissioner\Revascularisation\" -Destination "/PCT Commissioner/Revascularisation" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\PCT Commissioner\Risk Profiling DES\" -Destination "/PCT Commissioner/Risk Profiling DES" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\PCT Commissioner\Risk Stratification\" -Destination "/PCT Commissioner/Risk Stratification" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\PCT Commissioner\Urgent Care\" -Destination "/PCT Commissioner/Urgent Care" -Verbose


#PCT Commissioner (Finance)
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path / -Name "PCT Commissioner (Finance)" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\PCT Commissioner (Finance)\" -Destination "/PCT Commissioner (Finance)" -Verbose


#FOLDERS WITHIN PCT Commissioner (Finance)

New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/PCT Commissioner (Finance)" -FolderName "Contract Monitoring" -Verbose

Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\PCT Commissioner (Finance)\Contract Monitoring\" -Destination "/PCT Commissioner (Finance)/Contract Monitoring" -Verbose


#Somerset GP Practice Reporting
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path / -Name "Somerset GP Practice Reporting" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\Somerset GP Practice Reporting\" -Destination "/Somerset GP Practice Reporting" -Verbose


#South West CSU
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path / -Name "South West CSU" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\South West CSU\" -Destination "/South West CSU" -Verbose


#FOLDERS WITHIN South West CSU

New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/South West CSU" -FolderName "ABI Security and Report Monitoring" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/South West CSU" -FolderName "Time Recording Reports" -Verbose
New-RsFolder -ReportServerUri http://localhost/ReportServer -Path  "/South West CSU" -FolderName "User Administration (ASH)" -Verbose

Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\South West CSU\ABI Security and Report Monitoring\" -Destination "/South West CSU/ABI Security and Report Monitoring" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\South West CSU\Time Recording Reports\" -Destination "/South West CSU/Time Recording Reports" -Verbose
Write-RsFolderContent -ReportServerUri http://localhost/ReportServer -Path "E:\EXPORT\South West CSU\User Administration (ASH)\" -Destination "/South West CSU/User Administration (ASH)" -Verbose

