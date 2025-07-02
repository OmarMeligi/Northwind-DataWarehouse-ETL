-- Create Categories table
CREATE TABLE dbo.categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255),
    description VARCHAR(MAX)
);

-- Create Customers table
CREATE TABLE dbo.customers (
    customer_id INT PRIMARY KEY,
    company_name VARCHAR(255),
    contact_name VARCHAR(255),
    contact_title VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(255),
    region VARCHAR(255),
    postal_code VARCHAR(255),
    country VARCHAR(255),
    phone VARCHAR(255)
);

-- Create Employees table
CREATE TABLE dbo.employees (
    employee_id INT PRIMARY KEY,
    last_name VARCHAR(255),
    first_name VARCHAR(255),
    title VARCHAR(255),
    title_of_courtesy VARCHAR(255),
    birth_date DATE,
    hire_date DATE,
    address VARCHAR(255),
    city VARCHAR(255),
    postal_code VARCHAR(255),
    country VARCHAR(255),
    phone VARCHAR(255),
    reports_to INT
);

-- Create Employee Territories (Bridge Table)
CREATE TABLE dbo.employee_territories (
    employee_id INT,
    territory_id INT,
    PRIMARY KEY (employee_id, territory_id)
);

-- Create Orders table
CREATE TABLE dbo.orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    employee_id INT,
    order_date DATE,
    shipped_date DATE,
    delivery_date DATE,
    required_date DATE,
    delay_days INT,
    return_date DATE,
    shipping BIT,
    delivery BIT,
    isReturned BIT,
    ship_via INT,
    freight REAL,
    ship_name VARCHAR(40),
    ship_address VARCHAR(60),
    ship_city VARCHAR(15),
    ship_region VARCHAR(15),
    ship_postal_code VARCHAR(10),
    ship_country VARCHAR(15)
);

-- Create Order Details table
CREATE TABLE dbo.order_details (
    order_id INT,
    product_id INT,
    quantity INT,
    total_amount REAL,
    discount REAL,
    order_price REAL,
    PRIMARY KEY (order_id, product_id)
);

-- Create Products table
CREATE TABLE dbo.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    supplier_id INT,
    category_id INT,
    quantity_per_unit INT,
    unit_price REAL,
    units_in_stock SMALLINT,
    units_on_order SMALLINT,
    reorder_level SMALLINT,
    discontinued INT
);

-- Create Regions table
CREATE TABLE dbo.region (
    region_id SMALLINT PRIMARY KEY,
    region_description CHAR(50)
);

-- Create Shippers table
CREATE TABLE dbo.shippers (
    shipper_id INT PRIMARY KEY,
    company_name VARCHAR(40),
    phone VARCHAR(24)
);

-- Create Suppliers table
CREATE TABLE dbo.suppliers (
    supplier_id INT PRIMARY KEY,
    company_name VARCHAR(255),
    contact_name VARCHAR(255),
    contact_title VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    region VARCHAR(255),
    postal_code VARCHAR(255),
    country VARCHAR(255),
    phone VARCHAR(255)
);

-- Create Territories table
CREATE TABLE dbo.territories (
    territory_id INT PRIMARY KEY,
    territory_description VARCHAR(255),
    region_id SMALLINT
);

-- Create Sysdiagrams table (Optional)
CREATE TABLE dbo.sysdiagrams (
    name NVARCHAR(128),
    principal_id INT,
    diagram_id INT PRIMARY KEY,
    version INT,
    definition VARBINARY(MAX)
);
