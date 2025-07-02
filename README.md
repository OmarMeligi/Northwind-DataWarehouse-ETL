# Northwind Data Warehouse with SSIS ETL

This repository contains a complete data warehousing solution based on the Northwind transactional database. The project includes dimensional modeling, ETL processes implemented in SQL Server Integration Services (SSIS), and SQL scripts for creating and populating both the OLTP and Data Warehouse schemas.

## Objective

To demonstrate the process of designing and building a data warehouse using best practices in dimensional modeling and ETL development. The project supports analytical reporting on orders, customers, products, suppliers, and employees.

## Technologies Used

- SQL Server 2019
- SQL Server Integration Services (SSIS)
- SQL Server Management Studio (SSMS)
- Visual Studio with SSIS Projects extension

## Project Structure

NorthWind/
├── SQL/                       # SQL scripts for schema and data  
│   ├── create_oltp_schema.sql  
│   ├── create_dw_schema.sql  
│   ├── insert_sample_data.sql (optional)  
│   └── populate_dim_date.sql (optional)  
├── SSIS_ETL-Packages/         # SSIS packages and solution files  
├── Assets/                    # Architecture diagrams, ETL screenshots  
├── Doc/                       # Project documentation and notes  

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
- `DimProduct
