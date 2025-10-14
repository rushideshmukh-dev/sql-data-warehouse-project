/*
-------------------------------
Create Database and Schemas 
-------------------------------
Script Purpose :

          This script creates a new databse named 'Datawarehouse' after checking if it already exist.
          If Database exists, it is dropped and recreated. Additionally, the scrpit sets up three schemas within the databse : 'bronze' , 'silver'
          , and 'gold'

Warning :
         Running the script will drop the entire 'Datawarehouse' databse if it exists.
         All data in database will be permanently deleted . Proceed with caution and ensure you have proper backups before running the scripts.

*/

USE master ;
GO

--Drop and recreate the 'Datawarehouse' database

IF EXISTS ( SELECT 1 FROM sys.databases where name = 'Datawarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE Datawarehouse;
END,
GO

-- CREATE DATABASE DataWarehouse;

GO
  
USE DataWarehouse;

GO
  
CREATE SCHEMA bronze;

GO
  
CREATE SCHEMA silver;

GO
  
CREATE SCHEMA gold;

GO


