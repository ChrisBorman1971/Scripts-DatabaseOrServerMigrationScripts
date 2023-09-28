DECLARE @db_name VARCHAR(50) -- database name  
DECLARE @db_path VARCHAR(600) -- path for backup files 
DECLARE @db_datapath VARCHAR(600) -- path for backup files 
DECLARE @db_logpath VARCHAR(600) -- path for backup files 
DECLARE @db_devtype VARCHAR(10)
DECLARE @db_logicalname VARCHAR(600)
DECLARE @db_physicalname VARCHAR(600)
DECLARE @db_physicalname_diff VARCHAR(600)
DECLARE @tmpstr NVARCHAR(600)
DECLARE @tmpstr2 NVARCHAR(600)
DECLARE @tmpstr3 NVARCHAR(100)
DECLARE @server_name VARCHAR(50)
DECLARE @RestoreDB varchar(75)
DECLARE @RestoreDB_diff varchar(75)
DECLARE @date datetime
DECLARE @date_diff datetime
DECLARE @logicalNamemdf VARCHAR(600)
DECLARE @logicalNameldf VARCHAR(600)

DECLARE db_cursor CURSOR FOR  
-- Select statement for all User databases
SELECT distinct db.name FROM sys.databases db INNER JOIN sys.master_files mf ON db.database_id = mf.database_id WHERE db.name NOT IN ('master', 'model', 'msdb', 'tempdb', 'Admin', 'DBA', 'SSISDB', 'ReportServer%') and db.name NOT LIKE 'ReportServer%' and db.state <> 6 


OPEN db_cursor   
FETCH NEXT FROM db_cursor INTO @db_name   
	WHILE @@FETCH_STATUS = 0   
	BEGIN  
		SET @db_path = '\\XSW-000-SQLBK01.xswhealth.nhs.uk\SQLBackup\XSW-00-ASHDEV01'  -- Set this to the required path
--		Print @db_path
		SET @db_devtype = ' From DISK' 
		SET @date = (SELECT MAX([backup_finish_date]) FROM [msdb].[dbo].[backupset] WHERE [database_name] = @db_name and [type] = 'D')
--		PRINT @date 
		SET @RestoreDB = (SELECT @db_name + '_backup_For_Migaration.fbak')-- FROM [msdb].[dbo].[backupset] WHERE [database_name] = @db_name  and [type] = 'D' and [backup_finish_date] >= @date)
--		PRINT @RestoreDB 
		SET @db_datapath = (SELECT filename FROM master.sys.sysaltfiles mf INNER JOIN master.sys.databases db ON db.database_id = mf.dbid where db.name = @db_name and fileid = 1)
--		PRINT @db_datapath 
		SET @db_physicalname = @db_path + '\' + @RestoreDB
--		PRINT @db_physicalname 
		SET @db_logpath = (SELECT filename FROM master.sys.sysaltfiles mf INNER JOIN master.sys.databases db ON db.database_id = mf.dbid where db.name = @db_name and fileid = 2)
--		PRINT @db_logpath 
		SET @logicalNamemdf = (SELECT distinct logical_name FROM [msdb].[dbo].[backupset] bs inner join [msdb].[dbo].[backupfile] bf on bs.backup_set_id = bf.backup_set_id Where database_name =  @db_name and bf.file_number = 1)
--		PRINT @logicalNamemdf
		SET @logicalNameldf = (SELECT distinct logical_name FROM [msdb].[dbo].[backupset] bs inner join [msdb].[dbo].[backupfile] bf on bs.backup_set_id = bf.backup_set_id Where database_name =  @db_name and bf.file_number = 2)
--		PRINT @logicalNameldf
		SET @tmpstr = 'RESTORE DATABASE ' + '[' + @db_name + ']' + ' FROM DISK = N''' + @db_physicalname + ''' WITH  FILE = 1,  MOVE N''' + @logicalNamemdf + ''' TO N''' + @db_datapath + ''', MOVE N''' + @logicalNameldf + ''' TO N''' + @db_logpath + ''',  NOUNLOAD,  REPLACE,  STATS = 5;' 
		PRINT  @tmpstr
--		exec sp_executesql @tmpstr
		FETCH NEXT FROM db_cursor INTO @db_name   
	END   
CLOSE db_cursor  
DEALLOCATE db_cursor
GO