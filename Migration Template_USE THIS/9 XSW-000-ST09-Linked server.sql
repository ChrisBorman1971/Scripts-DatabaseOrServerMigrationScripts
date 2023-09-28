

 
EXEC master.dbo.sp_addlinkedserver @server = N'ADSI', @srvproduct=N'SQL Server'
GO
 
EXEC master.dbo.sp_serveroption @server=N'ADSI', @optname=N'collation compatible', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI', @optname=N'data access', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI', @optname=N'dist', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI', @optname=N'pub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI', @optname=N'rpc', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI', @optname=N'rpc out', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI', @optname=N'sub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI', @optname=N'connect timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI', @optname=N'collation name', @optvalue=null
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI', @optname=N'lazy schema validation', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI', @optname=N'query timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI', @optname=N'use remote collation', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO
USE [master]
GO
 
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname = N'ADSI', @locallogin = NULL , @useself = N'False', @rmtuser = N'dba_admin', @rmtpassword = N's1st3rs0fm3rcy'
GO
 
 
USE [master]
GO
 
EXEC master.dbo.sp_addlinkedserver @server = N'ADSI_XSW', @srvproduct=N'SQL Server'
GO
 
EXEC master.dbo.sp_serveroption @server=N'ADSI_XSW', @optname=N'collation compatible', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI_XSW', @optname=N'data access', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI_XSW', @optname=N'dist', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI_XSW', @optname=N'pub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI_XSW', @optname=N'rpc', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI_XSW', @optname=N'rpc out', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI_XSW', @optname=N'sub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI_XSW', @optname=N'connect timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI_XSW', @optname=N'collation name', @optvalue=null
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI_XSW', @optname=N'lazy schema validation', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI_XSW', @optname=N'query timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI_XSW', @optname=N'use remote collation', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'ADSI_XSW', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO
USE [master]
GO
 
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname = N'ADSI_XSW', @locallogin = NULL , @useself = N'False', @rmtuser = N'dba_admin', @rmtpassword = N's1st3rs0fm3rcy'
GO
 
 
USE [master]
GO
 
EXEC master.dbo.sp_addlinkedserver @server = N'RPC01', @srvproduct=N'SQL Server'
GO
 
EXEC master.dbo.sp_serveroption @server=N'RPC01', @optname=N'collation compatible', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'RPC01', @optname=N'data access', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'RPC01', @optname=N'dist', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'RPC01', @optname=N'pub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'RPC01', @optname=N'rpc', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'RPC01', @optname=N'rpc out', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'RPC01', @optname=N'sub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'RPC01', @optname=N'connect timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'RPC01', @optname=N'collation name', @optvalue=null
GO
EXEC master.dbo.sp_serveroption @server=N'RPC01', @optname=N'lazy schema validation', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'RPC01', @optname=N'query timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'RPC01', @optname=N'use remote collation', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'RPC01', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO
USE [master]
GO
 
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname = N'RPC01', @locallogin = NULL , @useself = N'False', @rmtuser = N'dba_admin', @rmtpassword = N's1st3rs0fm3rcy'
GO
 
 
USE [master]
GO
 
EXEC master.dbo.sp_addlinkedserver @server = N'XSW-00-ASH01', @srvproduct=N'SQL Server'
GO
 
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASH01', @optname=N'collation compatible', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASH01', @optname=N'data access', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASH01', @optname=N'dist', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASH01', @optname=N'pub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASH01', @optname=N'rpc', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASH01', @optname=N'rpc out', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASH01', @optname=N'sub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASH01', @optname=N'connect timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASH01', @optname=N'collation name', @optvalue=null
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASH01', @optname=N'lazy schema validation', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASH01', @optname=N'query timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASH01', @optname=N'use remote collation', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASH01', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO
USE [master]
GO
 
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname = N'XSW-00-ASH01', @locallogin = NULL , @useself = N'False', @rmtuser = N'dba_admin', @rmtpassword = N's1st3rs0fm3rcy'
GO
 
 
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
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASHDEV01', @optname=N'rpc', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'XSW-00-ASHDEV01', @optname=N'rpc out', @optvalue=N'true'
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
 
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname = N'XSW-00-ASHDEV01', @locallogin = NULL , @useself = N'False', @rmtuser = N'dba_admin', @rmtpassword = N's1st3rs0fm3rcy'
GO
 
 
USE [master]
GO
 
EXEC master.dbo.sp_addlinkedserver @server = N'62.130.231.140', @srvproduct=N'SQL Server'
GO
 
EXEC master.dbo.sp_serveroption @server=N'62.130.231.140', @optname=N'collation compatible', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'62.130.231.140', @optname=N'data access', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'62.130.231.140', @optname=N'dist', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'62.130.231.140', @optname=N'pub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'62.130.231.140', @optname=N'rpc', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'62.130.231.140', @optname=N'rpc out', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'62.130.231.140', @optname=N'sub', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'62.130.231.140', @optname=N'connect timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'62.130.231.140', @optname=N'collation name', @optvalue=null
GO
EXEC master.dbo.sp_serveroption @server=N'62.130.231.140', @optname=N'lazy schema validation', @optvalue=N'false'
GO
EXEC master.dbo.sp_serveroption @server=N'62.130.231.140', @optname=N'query timeout', @optvalue=N'0'
GO
EXEC master.dbo.sp_serveroption @server=N'62.130.231.140', @optname=N'use remote collation', @optvalue=N'true'
GO
EXEC master.dbo.sp_serveroption @server=N'62.130.231.140', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO
USE [master]
GO
 
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname = N'62.130.231.140', @locallogin = NULL , @useself = N'False', @rmtuser = N'dba_admin', @rmtpassword = N's1st3rs0fm3rcy'
GO
 

