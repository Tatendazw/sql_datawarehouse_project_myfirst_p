/*
===========================================================
Create Datebase and Schemas
============================================================
Scripts Purpose
this script create a new database with the name 'Datawarehouse' after checking if it exist and if the database exist, it is dropped 
and recreated. Additionally the script sets up three schemas within the database: 'bronze', 'silver', and 'gold'.

WARNING
Running this script will drop the whole database if it exists.
all data in the database will be permanently deleted. proceed with caution
and ensure you have proper backups before running this script.

*/ 

USE master;
GO

-- Drop and recreate the "FirstDatawarehouse" database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'FirstDatawarehouse')
BEGIN
	ALTER DATABASE FirstDatawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE FirstDatawarehouse;
END;
GO

-- Create the 'FirstDatawarehouse
CREATE DATABASE FirstDatawarehouse;
GO

USE FirstDatawarehouse;
GO

-- Create Schemas
CREATE SCHEMA Bronze;
GO
CREATE SCHEMA Silver;
GO
CREATE SCHEMA Gold;
GO
