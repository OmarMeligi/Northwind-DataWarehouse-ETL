-- DimAddress
CREATE TABLE dbo.DimAddress (
    AddressSk INT IDENTITY(1,1) PRIMARY KEY,
    Add_bk INT,
    Address_type CHAR(50),
    address VARCHAR(225),
    city VARCHAR(225),
    region VARCHAR(225),
    postal_code VARCHAR(225),
    country VARCHAR(225),
    StartDate DATE,
    EndDate DATE,
    IsCurrent BIT
);

-- DimCustomer
CREATE TABLE dbo.DimCustomer (
    CustomerSK INT IDENTITY(1,1) PRIMARY KEY,
    customer_id_BK INT,
    company_name VARCHAR(225),
    contact_name VARCHAR(225),
    contact_title VARCHAR(225),
    StartDate DATE,
    EndDate DATE,
    IsCurrent BIT
);

-- DimDate
CREATE TABLE dbo.DimDate (
    DateSk INT PRIMARY KEY,
    DateKey INT,
    Date DATE,
    Day TINYINT,
    DaySuffix CHAR(80),
    Weekday TINYINT,
    WeekDayName VARCHAR(255),
    WeekDayName_Short CHAR(80),
    WeekDayName_FirstLetter CHAR(80),
    DOWInMonth TINYINT,
    DayOfYear SMALLINT,
    WeekOfMonth TINYINT,
    WeekOfYear TINYINT,
    Month TINYINT,
    MonthName VARCHAR(255),
    MonthName_Short CHAR(80),
    MonthName_FirstLetter CHAR(80),
    Quarter TINYINT,
    QuarterName VARCHAR(255),
    Year INT,
    MMYYYY CHAR(80),
    MonthYear CHAR(80),
    IsWeekend BIT,
    IsHoliday BIT,
    HolidayName VARCHAR(255),
    SpecialDays VARCHAR(255),
    FinancialYear INT,
    FinancialQuater INT,
    FinancialMonth INT,
    FirstDateofYear DATE,
    LastDateofYear DATE,
    FirstDateofQuater DATE,
    LastDateofQuater DATE,
    FirstDateofMonth DATE,
    LastDateofMonth DATE,
    FirstDateofWeek DATE,
    LastDateofWeek DATE,
    CurrentYear SMALLINT,
    CurrentQuater SMALLINT,
    CurrentMonth SMALLINT,
    CurrentWeek SMALLINT,
    CurrentDay SMALLINT
);

-- DimEmployee
CREATE TABLE dbo.DimEmployee (
    EmployeeSK INT IDENTITY(1,1) PRIMARY KEY,
    employee_id_BK INT,
    last_name VARCHAR(225),
    first_name VARCHAR(225),
    title VARCHAR(225),
    title_of_courtesy VARCHAR(225),
    birth_date DATE,
    hire_date DATE,
    reports_to INT,
    territory_id_BK INT,
    territory_description VARCHAR(225),
    region_id_BK INT,
    region_description VARCHAR(225),
    StartDate DATE,
    EndDate DATE,
    IsCurrent BIT
);

-- DimProduct
CREATE TABLE dbo.DimProduct (
    ProductSK INT IDENTITY(1,1) PRIMARY KEY,
    product_id_BK INT,
    product_name VARCHAR(225),
    category_id_Bk INT,
    category_name VARCHAR(225),
    description VARCHAR(MAX),
    unit_price REAL,
    StartDate DATE,
    EndDate DATE,
    IsCurrent BIT
);

-- DimShippers
CREATE TABLE dbo.DimShippers (
    ShipperSK INT IDENTITY(1,1) PRIMARY KEY,
    shipper_id_BK INT,
    company_name VARCHAR(40)
);

-- DimSupplier
CREATE TABLE dbo.DimSupplier (
    SupplierSK INT IDENTITY(1,1) PRIMARY KEY,
    supplier_id_BK INT,
    company_name VARCHAR(30),
    contact_title VARCHAR(30)
);

-- FactOrders
CREATE TABLE dbo.FactOrders (
    Sales_SK INT IDENTITY(1,1) PRIMARY KEY,
    Order_id_BK INT,
    shipname VARCHAR(40),
    
    ShipperSK_FK INT,
    Shipper_ADD_id_FK INT,
    ProductSK_FK INT,
    SupplierSK_FK INT,
    Supplier_ADD_id_FK INT,
    EmployeeSK_FK INT,
    Employee_ADD_id_FK INT,
    CustomerSK_FK INT,
    Customer_ADD_id_FK INT,

    OrderDate_FK INT,
    DeliveryDate_FK INT,
    ShippedDate_FK INT,
    RequiredDate_FK INT,
    ReturnDate_FK INT,

    quantity INT,
    dicount REAL,
    freight REAL,
    order_price REAL,
    total_amount REAL,

    Delivery BIT,
    Shipping BIT,
    IsReturned BIT,
    OrderToDeliveryDays INT
);
