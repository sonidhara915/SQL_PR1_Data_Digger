CREATE DATABASE datadigger;
USE datadigger;


-- 1. CUSTOMERS TABLE 
CREATE TABLE customers(
    cus_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    address VARCHAR(200)
);

INSERT INTO customers VALUES
(1, 'Alice', 'alice@example.com', 'Surat'),
(2, 'Rahul', 'rahul@example.com', 'Ahmedabad'),
(3, 'Priya', 'priya@example.com', 'Vadodara'),
(4, 'Amit', 'amit@example.com', 'Rajkot'),
(5, 'Neha', 'neha@example.com', 'Gandhinagar');

-- Resive all customer details

SELECT * FROM customers;

-- update customers address

UPDATE customers SET address = "Mumbai" WHERE cus_id = 2;

-- Delete customer

DELETE FROM customers WHERE cus_id = 5;

-- Display custoer who name is Alice

SELECT * FROM customers WHERE name = "Alice";

-- 2. Order Table

Drop TABLE orders;

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    cus_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY(cus_id) REFERENCES customers(cus_id)
);

-- Insert 5 values

INSERT INTO orders VALUES
(101 , 1,"2026-05-02",20000),
(102 , 2,"2026-05-06",25400),
(103 , 3,"2026-05-04",65100),
(104 , 4,"2026-05-07",45000),
(105 , 5,"2026-05-10",50000);

--Retrieve all orders made by a specific customer.COMMENT

SELECT * FROM orders WHERE cus_id = 3;

-- Update an order's total amount.

UPDATE orders SET total_amount = 30000 WHERE order_id = 102;

-- Delate an order using its order id

DELETE FROM orders WHERE order_id = 104;

--Retrive orders placed in the last 30 days.

SELECT * FROM orders WHERE order_date >= CURRENT_DATE - INTERVAL 30 DAY;

-- Highest,Lowest and avarage value

SELECT MAX(total_amount) AS Highest, MIN(total_amount) AS Lowest,AVG(total_amount) AS avrage FROM orders;

--3) Product table

CREATE TABLE products(
    pro_id INT PRIMARY KEY,
    pro_name VARCHAR(100),
    price DECIMAL(10,2),
    stoke INT
);


-- insert 4 values

INSERT INTO products VALUES
(110 , 'Laptop', 94000, 10),
(120 , 'Mobile', 32000, 15),
(130 , 'Headphones', 2999, 0),
(140 , 'Keyboard', 1100, 20),
(150 , 'Monitor', 15000, 5);

-- Retrive all products sorted by price in descending order.

SELECT * FROM products ORDER BY price DESC;

-- Update the price of a specific products.

UPDATE products SET price = 3500 WHERE pro_id = 130;

-- Delete a product if its out of stock.

DELETE FROM products WHERE stoke = 0;

-- Retrive products whose price is bitween 500 and 2000,

SELECT * FROM products WHERE price > 500 AND price < 2000;

-- most expencive and cheapest products.

SELECT MAX(price) AS expancive_product, MIN(price) AS cheapast_order From products; 

--4) Order Details Table.

CREATE TABLE orderdetails(

    orderdetails_id INT PRIMARY KEY,
    order_id INT,
    pro_id INT,
    quantity INT,
    subtotal DECIMAL(10,2),
    FOREIGN KEY(order_id) REFERENCES orders(order_id),
    FOREIGN KEY(pro_id) REFERENCES products(pro_id)
);

-- insert 5 values
INSERT INTO orderdetails VALUES
(10001,101,110,40,65412),
(10002,102,120,15,64851),
(10003,103,130,26,97454),
(10004,104,140,65,45861);

-- Retrive all order details for a specific order.

    SELECT * FROM orderdetails WHERE order_id = 1003;

-- Calculate the total revenue generated from all orders uding SUM().COMMENT

SELECT SUM(subtotal) AS total_revenue FROM orderdetails;

-- Retrive the top 3 most ordered products.

SELECT pro_id, SUM(quantity) AS Total_sold FROM orderdetails
GROUP BY pro_id
ORDER BY Total_sold DESC LIMIT 3;

-- Count product sold.

SELECT COUNT(*) AS total_sales FROM orderdetails WHERE pro_id = 120;