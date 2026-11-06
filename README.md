# SQL_PR1_Data_Digger
# 🛒 Data Digger – E-Commerce Store Database

## 📌 Project Overview

**Data Digger** is my SQL-based E-Commerce Store Database project. It is designed to manage customer information, orders, product details, and order transactions using MySQL.

This project demonstrates how SQL can be used to create and manage a relational database, insert records, update information, delete records, and retrieve useful insights from data.

## 🎯 Project Objectives

- Create and manage an e-commerce database using MySQL.
- Store customer, order, product, and order-detail information.
- Perform CRUD operations (Create, Read, Update, and Delete).
- Use primary keys and foreign keys to maintain relationships.
- Retrieve data using filtering and sorting.
- Calculate sales statistics using aggregate functions.
- Identify top-selling products and calculate revenue.

## 🛠️ Technologies Used

- **Database:** MySQL
- **Language:** SQL
- **Tool:** MySQL Workbench / MySQL Command Line

## 🗂️ Database Structure

Database name: `datadigger`

The project contains four tables:

| Table | Description |
|---|---|
| `customers` | Stores customer names, email addresses, and locations. |
| `orders` | Stores order dates, customer references, and total amounts. |
| `products` | Stores product names, prices, and stock quantities. |
| `orderdetails` | Stores products included in orders, quantities, and subtotals. |

### 🔗 Table Relationships

- `customers.cus_id` → `orders.cus_id`
- `orders.order_id` → `orderdetails.order_id`
- `products.pro_id` → `orderdetails.pro_id`

These relationships connect customers with their orders and connect orders with the products they contain.

## 💡 SQL Concepts Covered

### 1. Database Operations
- `CREATE DATABASE`
- `USE`
- `CREATE TABLE`
- `DROP TABLE`

### 2. Data Manipulation
- `INSERT INTO`
- `UPDATE`
- `DELETE`

### 3. Data Retrieval
- `SELECT`
- `WHERE`
- `ORDER BY`
- `LIMIT`

### 4. Aggregate Functions
- `MAX()` – Finds the highest value.
- `MIN()` – Finds the lowest value.
- `AVG()` – Calculates the average.
- `SUM()` – Calculates the total.
- `COUNT()` – Counts records.

### 5. Other SQL Features
- Primary Key
- Foreign Key
- `UNIQUE`
- `NOT NULL`
- `GROUP BY`
- `INTERVAL`
- `DESC` sorting

## 📊 Key Queries and Features

The project includes queries to:

- Display all customer details.
- Update a customer's address.
- Delete a customer using their ID.
- Find a customer by name.
- Retrieve orders made by a specific customer.
- Update or delete an order.
- Find orders placed in the last 30 days.
- Calculate the highest, lowest, and average order amount.
- Display products in descending order of price.
- Update product prices.
- Remove products that are out of stock.
- Find products within a price range.
- Find the most expensive and cheapest product prices.
- Calculate total revenue using `SUM()`.
- Find the top 3 products by quantity sold.
- Count sales records for a particular product.

## ▶️ How to Run the Project

1. Install MySQL Server and MySQL Workbench, if they are not already installed.
2. Open MySQL Workbench or your preferred MySQL environment.
3. Open the project SQL script.
4. Execute the database creation and selection commands:

   ```sql
   CREATE DATABASE datadigger;
   USE datadigger;
   ```

5. Run the table creation statements in the correct order:
   - `customers`
   - `orders`
   - `products`
   - `orderdetails`
6. Insert the sample records.
7. Execute the SELECT, UPDATE, DELETE, and aggregate queries to explore the database.

**Note:** Run the script in order because the tables are connected through foreign keys. Some UPDATE and DELETE queries modify the sample data. If you want to rerun the full script, reset the database or remove the existing tables in the correct dependency order first.

## 📚 What I Learned

Through this project, I practiced:

- Writing SQL queries in MySQL.
- Designing relational database tables.
- Creating primary-key and foreign-key relationships.
- Performing CRUD operations.
- Filtering and sorting records.
- Using aggregate functions for data analysis.
- Understanding how an e-commerce database stores and connects information.

## 🚀 Future Improvements

- Add a payment table to track payment methods and payment status.
- Add product categories.
- Add customer order-history reports.
- Create views for frequently used reports.
- Add joins to generate detailed customer and sales reports.
- Improve data validation using constraints.

## Explanation Video
- https://drive.google.com/file/d/1DpbZJM21NaGrpwAigQA0uNGBxT9ilmCQ/view?usp=sharing

---

⭐ If you find this project useful, feel free to explore the repository!
