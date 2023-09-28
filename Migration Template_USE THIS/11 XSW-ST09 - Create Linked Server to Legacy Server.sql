USE [master]
GO
EXEC master.dbo.sp_addlinkedserver @server = N'XSW-00-ASHDEV01', @srvproduct=N'SQL Server'

GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASHDEV01', @optname=N'collation compatible', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASHDEV01', @optname=N'data access', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASHDEV01', @optname=N'dist', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASHDEV01', @optname=N'pub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASHDEV01', @optname=N'rpc', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASHDEV01', @optname=N'rpc out', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASHDEV01', @optname=N'sub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASHDEV01', @optname=N'connect timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASHDEV01', @optname=N'collation name', @optvalue=null
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASHDEV01', @optname=N'lazy schema validation', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASHDEV01', @optname=N'query timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASHDEV01', @optname=N'use remote collation', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASHDEV01', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO
USE [master]
GO
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname = N'XSW-00-ASHDEV01', @locallogin = NULL , @useself = N'False', @rmtuser = N'linkedserver', @rmtpassword = N'linkedserver1!'
GO
