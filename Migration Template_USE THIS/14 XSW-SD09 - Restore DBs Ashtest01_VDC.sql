--Query execution time-52 mins 54 sec

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
SELECT distinct db.name FROM [XSW-00-ASHTEST01].master.sys.databases db INNER JOIN [XSW-00-ASHTEST01].master.sys.master_files mf ON db.database_id = mf.database_id WHERE db.name NOT IN ('master', 'model', 'msdb', 'tempdb', 'Admin', 'DBA', 'SSISDB', 'ReportServer%') and db.name NOT LIKE 'ReportServer%' and db.state <> 6 


OPEN db_cursor   
FETCH NEXT FROM db_cursor INTO @db_name   
	WHILE @@FETCH_STATUS = 0   
	BEGIN  
		SET @db_path = '\\XSW-000-SQLBK01.xswhealth.nhs.uk\SQLBackup\ASHTEST\XSW-00-ASHTEST01'  -- Set this to the required path
		--SELECT @db_path AS dbpath
		SET @db_devtype = ' From DISK' 
		SET @date = (SELECT MAX([backup_finish_date]) FROM [XSW-00-ASHTEST01].[msdb].[dbo].[backupset] WHERE [database_name] = @db_name and [type] = 'D')
		--SELECT @date AS date
		SET @RestoreDB = (SELECT @db_name + '_backup_For_Migaration.fbak') --FROM [XSW-00-ASHDEV01].[msdb].[dbo].[backupset] WHERE [database_name] = @db_name  and [type] = 'D' and [backup_finish_date] >= @date)
		--SELECT @RestoreDB AS restoredb
		--SET @db_datapath = (SELECT filename FROM master.sys.sysaltfiles mf INNER JOIN master.sys.databases db ON db.database_id = mf.dbid where db.name = @db_name and fileid = 1)
		SET @db_datapath = (SELECT CAST(SERVERPROPERTY('InstanceDefaultDataPath')as varchar(600))) + @db_name
		--SELECT @db_datapath AS db_datapath
		SET @db_physicalname = @db_path + '\' + @RestoreDB
		SELECT @db_physicalname AS db_physicalname
		--SET @db_logpath = (SELECT filename FROM master.sys.sysaltfiles mf INNER JOIN master.sys.databases db ON db.database_id = mf.dbid where db.name = @db_name and fileid = 2)
		SET @db_logpath = (SELECT CAST(SERVERPROPERTY('InstanceDefaultLogPath')as varchar(600))) + @db_name
		--SELECT @db_logpath AS logpath
		SET @logicalNamemdf = (SELECT distinct logical_name FROM [XSW-00-ASHTEST01].[msdb].[dbo].[backupset] bs inner join [XSW-00-ASHTEST01].[msdb].[dbo].[backupfile] bf on bs.backup_set_id = bf.backup_set_id Where database_name =  @db_name and bf.file_number = 1)
		SELECT @logicalNamemdf AS logicalNamemdf
		SET @logicalNameldf = (SELECT distinct logical_name FROM [XSW-00-ASHTEST01].[msdb].[dbo].[backupset] bs inner join [XSW-00-ASHTEST01].[msdb].[dbo].[backupfile] bf on bs.backup_set_id = bf.backup_set_id Where database_name =  @db_name and bf.file_number = 2)
		SELECT @logicalNameldf AS logicalName
		SET @tmpstr = 'RESTORE DATABASE ' + '[' + @db_name + ']' + ' FROM DISK = N''' + @db_physicalname + ''' WITH  FILE = 1,  MOVE N''' + @logicalNamemdf + ''' TO N''' + @db_datapath + ''', MOVE N''' + @logicalNameldf + ''' TO N''' + @db_logpath + ''',  NOUNLOAD,  REPLACE,  STATS = 5;' 
		SELECT  @tmpstr
	--	exec sp_executesql @tmpstr
		FETCH NEXT FROM db_cursor INTO @db_name   
	END   
CLOSE db_cursor  
DEALLOCATE db_cursor
GO