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

SET @db_path = '\\CSU-000-SQLBK01.csu.xswhealth.nhs.uk\SQLBackup'  -- Set this to the required path
SET @server_name = (Select @@SERVERNAME )

DECLARE db_cursor CURSOR FOR  
-- Select statement for all User databases
SELECT name FROM sys.databases WHERE name NOT IN ('master', 'model', 'msdb', 'tempdb', 'DBA') and state_desc = 'ONLINE'

OPEN db_cursor   
FETCH NEXT FROM db_cursor INTO @db_name   
	WHILE @@FETCH_STATUS = 0   
	BEGIN  
		SET @RestoreDB = (SELECT @db_name + '_backup_For_Migaration.fbak')
		SET @db_datapath = (SELECT filename FROM master.sys.sysaltfiles mf INNER JOIN master.sys.databases db ON db.database_id = mf.dbid where db.name = @db_name and fileid = 1)
		SET @db_physicalname = @db_path + '\' +  @server_name + '\' + @RestoreDB
		SET @db_logpath = (SELECT filename FROM master.sys.sysaltfiles mf INNER JOIN master.sys.databases db ON db.database_id = mf.dbid where db.name = @db_name and fileid = 2)
		SET @tmpstr = 'RESTORE DATABASE ' + '[' + @db_name + ']' + ' FROM DISK = N''' + @db_physicalname + ''' WITH  FILE = 1,  MOVE N''' + @db_name + ''' TO N''' + @db_datapath + ''', MOVE N''' + @db_name + '_log'' TO N''' + @db_logpath + ''',  NOUNLOAD,  REPLACE,  STATS = 5;' 
		PRINT @tmpstr
		FETCH NEXT FROM db_cursor INTO @db_name   
	END   

CLOSE db_cursor  
DEALLOCATE db_cursor

