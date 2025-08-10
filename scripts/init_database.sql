-- ============================================
-- SQL Data Warehouse Setup Script
-- Author: Janhavi
-- Purpose: Create a database and organize it into schemas
--          using the Medallion Architecture (Bronze, Silver, Gold).
--          This is part of my learning journey from the
--          "Complete SQL Bootcamp" course on Udemy.
-- ============================================

-- Step 1: Start by using the default 'master' database
USE master;
GO

-- Step 2: Check if a database named 'dataWareHouse' already exists.
-- If it doesn't, create it.
IF NOT EXISTS (
    SELECT name FROM sys.databases WHERE name = 'dataWareHouse'
)
BEGIN
    CREATE DATABASE dataWareHouse;
END
GO

-- Step 3: Switch to the new 'dataWareHouse' database
USE dataWareHouse;
GO

-- Step 4: Create schemas to organize your data warehouse.
-- These schemas follow the Medallion Architecture:

-- Bronze: Raw data directly from source systems (CSV, ERP, CRM, etc.)
CREATE SCHEMA Bronze;
GO

--Silver: Cleaned and transformed data, ready for analysis
CREATE SCHEMA Silver;
GO

--Gold: Final, business-ready data used for dashboards and reports
CREATE SCHEMA Gold;
GO
