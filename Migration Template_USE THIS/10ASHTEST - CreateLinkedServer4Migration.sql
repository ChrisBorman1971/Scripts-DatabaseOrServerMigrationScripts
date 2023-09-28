USE [master]
GO
CREATE LOGIN [linkedserver] WITH PASSWORD=N'linkedserver1!', DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
USE [msdb]
GO
CREATE USER [linkedserver] FOR LOGIN [linkedserver]
GO
USE [msdb]
GO
ALTER ROLE [db_datareader] ADD MEMBER [linkedserver]
GO
