--Query execution time-54 mins
DECLARE @db_name VARCHAR(50) -- database name  
DECLARE @db_path VARCHAR(80) -- path for backup files 
DECLARE @tmpstr NVARCHAR(800)
DECLARE @BackupDB varchar(75)
DECLARE @BackupDBName varchar(75)

--SET @db_path = '\\XSW-000-SQLBK01.xswhealth.nhs.uk\SQLBackup\ASHTEST\XSW-00-ASHTEST01\'  -- Set this to the required path

DECLARE db_cursor CURSOR FOR  
-- Select statement for all User databases
SELECT name FROM master.dbo.sysdatabases WHERE name NOT IN ('master', 'model', 'msdb', 'tempdb', 'Admin', 'DBA') 


OPEN db_cursor   
FETCH NEXT FROM db_cursor INTO @db_name   
	WHILE @@FETCH_STATUS = 0   
	BEGIN  
		SET @db_path = '\\XSW-000-SQLBK01.xswhealth.nhs.uk\SQLBackup\ASHTEST\XSW-00-ASHTEST01\'  -- Set this to the required path
		SET @BackupDB = (SELECT @db_name + '_backup_For_Migaration.fbak')
		SET @BackupDBName = (SELECT @db_name + '_backup_For_Migaration')
		SET @tmpstr = 'BACKUP DATABASE ' + '[' + @db_name + ']' + ' TO DISK = N''' + @db_path + '\' + @BackupDB + ''' WITH  COPY_ONLY, NOFORMAT, NOINIT,  NAME = N''' + @BackupDBName + ''', SKIP, REWIND, NOUNLOAD, COMPRESSION,  STATS = 10;' 
		exec sp_executesql @tmpstr
		FETCH NEXT FROM db_cursor INTO @db_name   
	END   
CLOSE db_cursor  
DEALLOCATE db_cursor

