IF EXISTS (SELECT name FROM sysobjects WHERE name = 'usp_CreateEmailOperators' AND type = 'P')
	DROP PROCEDURE usp_CreateEmailOperators
GO

CREATE PROCEDURE usp_CreateEmailOperators
AS

DECLARE @name NVARCHAR(500)

DECLARE db_cursor CURSOR FOR  
SELECT name FROM msdb.dbo.sysoperators

OPEN db_cursor   
FETCH NEXT FROM db_cursor INTO @name   
Declare	@email_address nvarchar(75)
set @email_address = (SELECT email_address FROM msdb.dbo.sysoperators where name = @name)
WHILE @@FETCH_STATUS = 0   
BEGIN

	DECLARE @tmpstr NVARCHAR (1000)
		SET @tmpstr = 'EXEC msdb.dbo.sp_add_operator ' + '"' + @name + '"' + ', '+' @enabled = 1, @weekday_pager_start_time=80000, @weekday_pager_end_time=180000, @saturday_pager_start_time=80000, @saturday_pager_end_time=180000, @sunday_pager_start_time=80000, @sunday_pager_end_time=180000, @pager_days=0, @email_address=N''' + '' + @email_address + ''',@category_name=N''[Uncategorized]'''
		PRINT ' '
		PRINT ' '
		PRINT @tmpstr
		PRINT 'Go'
		PRINT ' '
	FETCH NEXT FROM db_cursor INTO @name   
END   


CLOSE db_cursor  
DEALLOCATE db_cursor
go
