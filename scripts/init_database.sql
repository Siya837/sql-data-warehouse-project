/*===================================================================
  Create Database and Schemas
  ===================================================================
Script Purpose:
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  if the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the database: 'bronze', 'silver', and 'gold'.

Warning:
  Running this scripts will drop the entire 'DataWarehouse' database if it exists.
  All data in the database will permanently be deleted. Proceed with caution and ensure you have proper backups before running this scripts.
*/


--Create Database 'DataWarehouse'

USE master; --switch to master inorder to create a DB

--First drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehousE;
END;
GO

--Created a new DB called DataWarehouse
CREATE DATABASE DataWarehouse; 

USE DataWarehouse;

CREATE SCHEMA bronze; --create schemas for bronze,silver and Gold
GO
CREATE SCHEMA silver;--USE of GO in SQL is to tell SQL to execute the first command before you go to the next one
GO
CREATE SCHEMA gold; 
GO
