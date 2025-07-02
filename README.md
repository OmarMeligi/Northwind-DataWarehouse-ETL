# Northwind Data Warehouse with SSIS ETL

This repository contains a complete data warehousing solution based on the Northwind transactional database. The project includes dimensional modeling, ETL processes implemented in SQL Server Integration Services (SSIS), and SQL scripts for creating and populating both the OLTP and Data Warehouse schemas.

## Objective

To demonstrate the process of designing and building a data warehouse using best practices in dimensional modeling and ETL development. The project supports analytical reporting on orders, customers, products, suppliers, and employees.

## Technologies Used

- SQL Server 2019
- SQL Server Integration Services (SSIS)
- SQL Server Management Studio (SSMS)
- Visual Studio with SSIS Projects extension


## Schema Overview

### OLTP Source (Normalized)

The OLTP system is modeled after the original Northwind database, including:

- Customers  
- Employees  
- Orders and Order Details  
- Products, Categories, Suppliers  
- Shippers, Regions, Territories  

### Data Warehouse (Star Schema)

**Fact Table**  
- `FactOrders`: Measures related to sales performance, delivery, freight, and returns

**Dimension Tables**  
- `DimCustomer`  
- `DimProduct`  
- `DimEmployee`  
- `DimSupplier`  
- `DimShippers`  
- `DimAddress`  
- `DimDate`  

The model uses surrogate keys, handles slowly changing dimensions (Type 2), and integrates date intelligence features.

## ETL Architecture

The ETL process is implemented in SSIS and includes:

- Data extraction from the OLTP schema  
- Lookup operations for surrogate key assignment  
- Type 2 SCD implementation for dimension history  
- Data transformation and cleansing  
- Loading into staging, dimension, and fact tables  

Each SSIS package is designed to load a specific target (e.g., DimCustomer, FactOrders) and can be executed independently or as part of a scheduled pipeline.

## Usage Instructions

1. Clone this repository to your local machine.
2. Create and populate both OLTP and DW schemas using the SQL scripts in the `SQL/` folder.
3. Open the SSIS solution in Visual Studio and execute the ETL packages.
4. Query the data warehouse or connect to BI tools such as Power BI for reporting.

## Requirements

- Microsoft SQL Server 2019 or later  
- Visual Studio with the SSIS Projects extension installed  
- SQL Server Management Studio (SSMS)  

## License

This project is intended for academic, training, and demonstration purposes.

## Author

**Omar Adel Meligy**  
Production and Data Engineer
