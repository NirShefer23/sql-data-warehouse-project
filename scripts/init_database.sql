/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

-- USE Database 'MASTER'

USE master;
GO
IF EXISTS (SELECT 1 FROM sys.databases WHERE  name = 'MDA_DWH')
BEGIN
    ALTER DATABASE MDA_DWH SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE MDA_DWH;
END;
GO

CREATE DATABASE MDA_DWH;
GO

USE MDA_DWH;
GO

CREATE SCHEMA ls_bronze;
GO
CREATE SCHEMA ls_silver;
GO
CREATE SCHEMA ls_gold;
GO
