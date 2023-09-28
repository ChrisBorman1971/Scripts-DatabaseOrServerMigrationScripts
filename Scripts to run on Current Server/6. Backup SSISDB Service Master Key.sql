USE [SSISDB]
GO

SELECT b.[name], a.[crypt_type_desc]
FROM [sys].[key_encryptions] a INNER JOIN [sys].[symmetric_keys] b ON a.[key_id] = b.[symmetric_key_id]
WHERE b.[name] = '##MS_DatabaseMasterKey##';
GO


USE [SSISDB]
GO

--			Master key password must be specified when it is opened.
OPEN MASTER KEY DECRYPTION BY PASSWORD = 'p@#EMV684AD'
BACKUP MASTER KEY TO FILE = 'C:\Temp\ExportedMasterKey.key'
ENCRYPTION BY PASSWORD = 'p@#EMV684AD'
GO

BACKUP SERVICE MASTER KEY TO FILE = 'c:\temp\service_master_key' ENCRYPTION BY PASSWORD = 'p@#EMV684AD';