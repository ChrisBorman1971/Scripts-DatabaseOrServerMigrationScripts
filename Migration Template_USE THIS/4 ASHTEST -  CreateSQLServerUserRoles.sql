USE [master]
GO
/****** Object:  StoredProcedure [dbo].[usp_CreateSQLServerUserRoles]    Script Date: 10/01/2013 09:29:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_CreateSQLServerUserRoles]
AS
SET NOCOUNT ON
DECLARE @SQLCmd nvarchar(1000)
DECLARE @RoleName sysname
DECLARE @Login sysname
DECLARE @Count int

Create Table	#ServerRoles 
				(
					ServerRole	sysname,
					MemberName	sysname,
					MemberSID	varbinary(85)
				)

INSERT INTO #ServerRoles
	exec sp_helpsrvrolemember 

DECLARE ServerRoleCursor Cursor 
	FOR 
	SELECT	ServerRole,MemberName 
	FROM	#ServerRoles 
	WHERE	MemberName not like 'NT SERVICE%' 
			AND MemberName <> 'sa' AND
			MemberName not like 'NT AUTHORITY%'

OPEN ServerRoleCursor

FETCH NEXT FROM ServerRoleCursor
	INTO @RoleName, @Login


	SET @Count = 0

	WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @SQLCmd = 'exec sp_addsrvrolemember ''' + @Login + ''' , ''' + @RoleName + ''''
			PRINT @SQLCmd

			SET @Count = @Count + 1 

			FETCH NEXT FROM ServerRoleCursor
			INTO @RoleName, @Login
		END

		IF @Count=0
			Print 'No logins with serverroles, besides SA'
		ELSE
			Print '--' + CAST(@Count as varchar(5)) + ' Roles scriptet'

CLOSE	ServerRoleCursor
DEALLOCATE	ServerRoleCursor

DROP TABLE	#ServerRoles
