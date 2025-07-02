# Northwind-DW-SSIS

This project builds a Data Warehouse from the Northwind OLTP system using SQL Server and SSIS. It demonstrates dimensional modeling, ETL design, and data integration following best practices for business intelligence projects.

## Project Overview

- Source System: Northwind OLTP schema (normalized)
- Target System: Dimensional Data Warehouse (star schema)
- ETL Tool: SQL Server Integration Services (SSIS)
- Database: Microsoft SQL Server
- Objective: Enable structured analysis of orders, customers, employees, products, and suppliers

## Repository Structure

NorthWind/
├── Assets/                  # Screenshots, diagrams, visuals  
├── Doc/                     # Documentation (PDFs, notes, markdown)  
├── SQL/                     # SQL scripts to create and populate schemas  
├── SSIS_ETL-Packages/       # SSIS solution and ETL packages  

## SQL Scripts

Located in the `SQL/` directory:

- `create_oltp_schema.sql`: Defines the OLTP source schema (based on Northwind)
- `create_dw_schema.sql`: Defines the Data Warehouse dimensional model
- `populate_dim_date.sql`: Script to generate the DimDate dimension
- `insert_sample_data.sql`: Optional test data (if included)

## ETL Packages

Located in the `SSIS_ETL-Packages/` directory. Each package is designed to extract, transform, and load one dimension or fact table. The ETL follows a modular structure:

- DimCustomer.dtsx  
- DimProduct.dtsx  
- DimEmployee.dtsx  
- FactOrders.dtsx  
- NorthWind_ETL.sln (SSIS solution file)

The ETL process includes:

- Surrogate key generation
- Slowly Changing Dimensions (SCD Type 2) handling
- Date dimension linkage
- Lookup and data cleansing operations

## Data Warehouse Model

The Data Warehouse uses a star schema consisting of:

- Fact Table:
  - `FactOrders`: Measures sales, delivery status, return flags, etc.
- Dimensions:
  - `DimCustomer`
  - `DimProduct`
  - `DimEmployee`
  - `DimSupplier`
  - `DimShippers`
  - `DimAddress`
  - `DimDate`

## How to Use

1. Restore or recreate the OLTP and DW schemas using the scripts in the `SQL/` folder.
2. Open the SSIS solution in Visual Studio.
3. Execute ETL packages in sequence to populate dimension and fact tables.
4. Perform queries or connect to visualization tools such as Power BI for reporting.

## Requirements

- SQL Server 2019 or later
- Visual Studio with SSIS extension
- SQL Server Management Studio (SSMS)

## Author

Omar Adel Meligy  
Production and Data Engineer
