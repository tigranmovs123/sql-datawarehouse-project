/*
This scripts creates datawarehouse database  after checking if it already exists, if it exists, it's dropped and recreated
And the script sets up three schemas` bronze, silver and gold
*/

USE master;
GO
-- Drop and  recrreate the datawarehouse database
IF EXISTS (SELECT 1 from  sys.databases WHERE name = 'datawarehouse')
BEGIN
  ALTER database  datawarehouse set single_user with rollback immediate;
  DROP database datawarehouse;
END;
GO
-- creating the datawarehouse database
CREATE database datawarehouse;

USE datawarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
