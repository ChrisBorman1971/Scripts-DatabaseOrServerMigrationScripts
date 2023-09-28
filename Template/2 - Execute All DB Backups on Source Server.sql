DECLARE @db_name VARCHAR(50) -- database name  
DECLARE @db_path VARCHAR(80) -- path for backup files 
DECLARE @tmpstr NVARCHAR(800)
DECLARE @BackupDB varchar(75)
DECLARE @BackupDBName varchar(75)

--SET @db_path = '\\XSW-000-SQLBK01.xswhealth.nhs.uk\SQLBackup\XSW-00-ASH01\'  -- Set this to the required path

DECLARE db_cursor CURSOR FOR  
-- Select statement for all User databases
SELECT distinct db.name FROM sys.databases db INNER JOIN sys.master_files mf ON db.database_id = mf.database_id WHERE db.name NOT IN ('master', 'model', 'msdb', 'tempdb', 'Admin', 'DBA', 'SSISDB', 'ReportServer%') and db.name NOT LIKE 'ReportServer%' and db.state <> 6 

OPEN db_cursor   
FETCH NEXT FROM db_cursor INTO @db_name   
	WHILE @@FETCH_STATUS = 0   
	BEGIN  
		SET @db_path = '\\XSW-000-SQLBK01.xswhealth.nhs.uk\SQLBackup\XSW-00-ASH01'  -- Set this to the required path
		SET @BackupDB = (SELECT @db_name + '_backup_For_Migaration.fbak')
		SET @BackupDBName = (SELECT @db_name + '_backup_For_Migaration')
		SET @tmpstr = 'BACKUP DATABASE ' + '[' + @db_name + ']' + ' TO DISK = N''' + @db_path + '\' + @BackupDB + ''' WITH  COPY_ONLY, NOFORMAT, NOINIT,  NAME = N''' + @BackupDBName + ''', SKIP, REWIND, NOUNLOAD, COMPRESSION,  STATS = 10;' 
		PRINT @tmpstr
--		exec sp_executesql @tmpstr
		FETCH NEXT FROM db_cursor INTO @db_name   
	END   
CLOSE db_cursor  
DEALLOCATE db_cursor

