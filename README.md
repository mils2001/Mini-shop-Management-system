# Mini Shop Inventory Management System

## Project Overview

The Mini Shop Inventory Management System is a database project built using SQLite. It helps manage shop products by storing product details, tracking stock quantities, organizing products into categories, and calculating inventory values.

## Objectives

* Create a SQLite database named `shop.db`.
* Create and manage a `products` table.
* Insert and retrieve product records.
* Update product prices and quantities.
* Delete product records.
* Sort and filter products.
* Calculate inventory statistics using SQL aggregate functions.
* Group products by category.
* Calculate inventory values and summarize stock by category.

## Technologies Used

* SQLite
* SQL
* SQLite command-line interface

## Database Structure

The database contains a `products` table with the following columns:

| Column         | Data Type | Description                               |
| -------------- | --------- | ----------------------------------------- |
| `product_id`   | INTEGER   | Unique product identifier and primary key |
| `product_name` | TEXT      | Name of the product                       |
| `category`     | TEXT      | Product category                          |
| `price`        | REAL      | Price of one product                      |
| `quantity`     | INTEGER   | Number of units in stock                  |
| `supplier`     | TEXT      | Product supplier name                     |

## Product Categories

The sample data includes three categories:

* Electronics
* Groceries
* Furniture

## Features and SQL Concepts

### 1. Table Management

Creates the products table and adds the supplier column.

### 2. Data Manipulation

Uses `INSERT`, `UPDATE`, and `DELETE` to manage product records.

### 3. Data Retrieval

Uses `SELECT` and `WHERE` to retrieve products according to specified conditions.

### 4. Sorting and Filtering

Uses `ORDER BY`, `LIMIT`, and `LIKE` to sort and filter product records.

### 5. Aggregate Functions

Uses `COUNT()`, `AVG()`, `MAX()`, `MIN()`, and `SUM()` to summarize inventory data.

### 6. Grouping

Uses `GROUP BY` and `HAVING` to analyze products by category.

### 7. Calculations and SQL Functions

Uses `price * quantity` to calculate inventory value, `ROUND()` to round prices, and `UPPER()` to display product names in uppercase.

## Project Files

* `shop.db` — SQLite database containing the shop inventory.
* `shop.sql` — SQL statements for creating, populating, querying, and managing the database.
* `README.md` — Project documentation.

## How to Run

1. Install SQLite if it is not already installed.

2. Open a terminal in the project directory.

3. Open the database:

   ```bash
   sqlite3 shop.db
   ```

4. Display the table in column format:

   ```sql
   .headers on
   .mode column
   SELECT * FROM products;
   ```

5. To execute the complete setup and demonstration script, use a fresh database:

   ```bash
   sqlite3 shop_test.db < shop.sql
   ```

   The script is intended for a fresh database and should not be rerun against an already populated database without adjusting the setup and modification statements.

## Learning Outcomes

This project demonstrates practical knowledge of SQLite database creation, table design, data manipulation, data retrieval, filtering, sorting, aggregate functions, grouping, and calculated inventory values.

## Author

Developed as a SQL database learning project.

## License

This project is intended for educational purposes.
