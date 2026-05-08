/*
    Project : Ecommerce Data Warehouse
    Purpose : Initialize database and warehouse schemas

    This script:
    - Creates the DataWarehouse database if it does not exist
    - Creates Bronze, Silver, and Gold schemas
    - Prepares the warehouse foundation for ETL pipelines
*/

-- Switch to master database
USE master;
GO

-- Create database only if it does not already exist
IF NOT EXISTS (
    SELECT *
    FROM sys.databases
    WHERE name = 'DataWarehouse'
)
BEGIN
    CREATE DATABASE DataWarehouse;
END
GO

-- Switch to DataWarehouse database
USE DataWarehouse;
GO

-- Create Bronze schema if it does not exist
IF NOT EXISTS (
    SELECT *
    FROM sys.schemas
    WHERE name = 'bronze'
)
BEGIN
    EXEC('CREATE SCHEMA bronze');
END
GO

-- Create Silver schema if it does not exist
IF NOT EXISTS (
    SELECT *
    FROM sys.schemas
    WHERE name = 'silver'
)
BEGIN
    EXEC('CREATE SCHEMA silver');
END
GO

-- Create Gold schema if it does not exist
IF NOT EXISTS (
    SELECT *
    FROM sys.schemas
    WHERE name = 'gold'
)
BEGIN
    EXEC('CREATE SCHEMA gold');
END
GO
