
USE [master]
GO

If Exists(Select * from sysobjects where name = 'usp_CreateLinkedServers')
	Drop Procedure dbo.usp_CreateLinkedServers

/****** Object:  StoredProcedure [dbo].[usp_CreateLinkedServers]    Script Date: 10/01/2013 09:29:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_CreateLinkedServers]
AS
DECLARE @db_name VARCHAR(100) -- database name  
DECLARE @tmpstr VARCHAR(max)
Declare @SName as VARCHAR(20)
Declare @String as VARCHAR(20)

SET @SName = (Select @@Servername) 
SET @String = '''SQL Server''' 

DECLARE db_cursor CURSOR FOR  
select name from sys.servers where name not in ('repl_distributor', @SName)

OPEN db_cursor   
FETCH NEXT FROM db_cursor INTO @db_name   
WHILE @@FETCH_STATUS = 0   
BEGIN   

	set @tmpstr = 'USE [master]'
	PRINT @tmpstr
	set @tmpstr = 'GO'
	PRINT @tmpstr
	PRINT ' '
	set @tmpstr = 'EXEC master.dbo.sp_addlinkedserver @server = N''' + @db_name + ''', @srvproduct=N' + @String
	PRINT @tmpstr
	set @tmpstr = 'GO'
	PRINT @tmpstr
	PRINT ' '

	set @tmpstr = 'EXEC master.dbo.sp_serveroption @server=N''' + @db_name + ''', @optname=N''collation compatible'', @optvalue=N''false'''
	PRINT @tmpstr
	set @tmpstr = 'GO'
	PRINT @tmpstr


	set @tmpstr = 'EXEC master.dbo.sp_serveroption @server=N''' + @db_name + ''', @optname=N''data access'', @optvalue=N''true'''
	PRINT @tmpstr
	set @tmpstr = 'GO'
	PRINT @tmpstr

	set @tmpstr = 'EXEC master.dbo.sp_serveroption @server=N''' + @db_name + ''', @optname=N''dist'', @optvalue=N''false'''
	PRINT @tmpstr
	set @tmpstr = 'GO'
	PRINT @tmpstr

	set @tmpstr = 'EXEC master.dbo.sp_serveroption @server=N''' + @db_name + ''', @optname=N''pub'', @optvalue=N''false'''
	PRINT @tmpstr
	set @tmpstr = 'GO'
	PRINT @tmpstr

	set @tmpstr = 'EXEC master.dbo.sp_serveroption @server=N''' + @db_name + ''', @optname=N''rpc'', @optvalue=N''true'''
	PRINT @tmpstr
	set @tmpstr = 'GO'
	PRINT @tmpstr

	set @tmpstr = 'EXEC master.dbo.sp_serveroption @server=N''' + @db_name + ''', @optname=N''rpc out'', @optvalue=N''true'''
	PRINT @tmpstr
	set @tmpstr = 'GO'
	PRINT @tmpstr

	set @tmpstr = 'EXEC master.dbo.sp_serveroption @server=N''' + @db_name + ''', @optname=N''sub'', @optvalue=N''false'''
	PRINT @tmpstr
	set @tmpstr = 'GO'
	PRINT @tmpstr

	set @tmpstr = 'EXEC master.dbo.sp_serveroption @server=N''' + @db_name + ''', @optname=N''connect timeout'', @optvalue=N''0'''
	PRINT @tmpstr
	set @tmpstr = 'GO'
	PRINT @tmpstr

	set @tmpstr = 'EXEC master.dbo.sp_serveroption @server=N''' + @db_name + ''', @optname=N''collation name'', @optvalue=null'
	PRINT @tmpstr
	set @tmpstr = 'GO'
	PRINT @tmpstr

	set @tmpstr = 'EXEC master.dbo.sp_serveroption @server=N''' + @db_name + ''', @optname=N''lazy schema validation'', @optvalue=N''false'''
	PRINT @tmpstr
	set @tmpstr = 'GO'
	PRINT @tmpstr

	set @tmpstr = 'EXEC master.dbo.sp_serveroption @server=N''' + @db_name + ''', @optname=N''query timeout'', @optvalue=N''0'''
	PRINT @tmpstr
	set @tmpstr = 'GO'
	PRINT @tmpstr

	set @tmpstr = 'EXEC master.dbo.sp_serveroption @server=N''' + @db_name + ''', @optname=N''use remote collation'', @optvalue=N''true'''
	PRINT @tmpstr
	set @tmpstr = 'GO'
	PRINT @tmpstr

	set @tmpstr = 'EXEC master.dbo.sp_serveroption @server=N''' + @db_name + ''', @optname=N''remote proc transaction promotion'', @optvalue=N''true'''
	PRINT @tmpstr
	set @tmpstr = 'GO'
	PRINT @tmpstr

	set @tmpstr = 'USE [master]'
	PRINT @tmpstr
	set @tmpstr = 'GO'
	PRINT @tmpstr
	PRINT ' '

	set @tmpstr = 'EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname = N''' + @db_name + ''', @locallogin = NULL , @useself = N''False'', @rmtuser = N''dba_admin'', @rmtpassword = N''s1st3rs0fm3rcy'''
	PRINT @tmpstr
	set @tmpstr = 'GO'
	PRINT @tmpstr

	Print ''
	Print ''

	FETCH NEXT FROM db_cursor INTO @db_name
END   
	
CLOSE db_cursor
DEALLOCATE db_cursor
go

Exec [dbo].[usp_CreateLinkedServers]
go
