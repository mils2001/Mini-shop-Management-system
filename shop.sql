-- =====================================================
-- MINI SHOP INVENTORY MANAGEMENT SYSTEM
-- Database: shop.db
-- SQL dialect: SQLite
-- =====================================================

-- SECTION 1: CREATE THE PRODUCTS TABLE
-- Run this setup on a fresh database.

CREATE TABLE products (
product_id INTEGER PRIMARY KEY AUTOINCREMENT,
product_name TEXT NOT NULL,
category TEXT NOT NULL,
price REAL NOT NULL CHECK (price >= 0),
quantity INTEGER NOT NULL CHECK (quantity >= 0),
supplier TEXT
);

-- SECTION 2: INSERT AT LEAST 8 PRODUCTS

INSERT INTO products
(product_name, category, price, quantity, supplier)
VALUES
('Laptop', 'Electronics', 65000, 5, 'Tech Supplies Ltd'),
('Phone', 'Electronics', 25000, 12, 'Tech Supplies Ltd'),
('Headphones', 'Electronics', 1500, 8, 'Audio Distributors'),
('Rice', 'Groceries', 2500, 20, 'Fresh Foods Ltd'),
('Sugar', 'Groceries', 180, 30, 'Fresh Foods Ltd'),
('Cooking Oil', 'Groceries', 1200, 7, 'Daily Goods Ltd'),
('Office Chair', 'Furniture', 8500, 4, 'Office World Ltd'),
('Desk', 'Furniture', 12000, 6, 'Office World Ltd');

-- SECTION 3: RETRIEVE RECORDS

-- Display all products
SELECT * FROM products;

-- Display product names and prices
SELECT product_name, price FROM products;

-- Products costing more than 1,000
SELECT * FROM products WHERE price > 1000;

-- Products in the Electronics category
SELECT * FROM products WHERE category = 'Electronics';

-- SECTION 4: SORT AND FILTER

-- Three most expensive products
SELECT product_name, price
FROM products
ORDER BY price DESC
LIMIT 3;

-- Products with quantity below 10
SELECT * FROM products WHERE quantity < 10;

-- Product names starting with S
SELECT * FROM products WHERE product_name LIKE 'S%';

-- SECTION 5: UPDATE AND DELETE
-- Run these modification statements only once.

-- Increase the price of Headphones
UPDATE products
SET price = 1800
WHERE product_name = 'Headphones';

-- Update the quantity of Sugar
UPDATE products
SET quantity = 40
WHERE product_name = 'Sugar';

-- Delete Cooking Oil
DELETE FROM products
WHERE product_name = 'Cooking Oil';

-- SECTION 6: AGGREGATE FUNCTIONS

-- Total number of products
SELECT COUNT(*) AS total_products FROM products;

-- Average price
SELECT ROUND(AVG(price), 2) AS average_price FROM products;

-- Highest price
SELECT MAX(price) AS highest_price FROM products;

-- Lowest price
SELECT MIN(price) AS lowest_price FROM products;

-- Total quantity in stock
SELECT SUM(quantity) AS total_quantity FROM products;

-- SECTION 7: GROUP BY CATEGORY

-- Count products in each category
SELECT category, COUNT(*) AS product_count
FROM products
GROUP BY category;

-- Average price for each category
SELECT category, ROUND(AVG(price), 2) AS average_price
FROM products
GROUP BY category;

-- SECTION 8: CALCULATIONS AND FUNCTIONS

-- Calculate inventory value for each product
SELECT product_name, price, quantity,
price * quantity AS inventory_value
FROM products;

-- Round prices to two decimal places
SELECT product_name, ROUND(price, 2) AS rounded_price
FROM products;

-- Display product names in uppercase
SELECT UPPER(product_name) AS product_name
FROM products;

-- SECTION 9: CHALLENGE
-- Categories with more than one product and their
-- total inventory value

SELECT category,
COUNT(*) AS product_count,
SUM(price * quantity) AS total_inventory_value
FROM products
GROUP BY category
HAVING COUNT(*) > 1;

-- END OF MINI SHOP INVENTORY MANAGEMENT SYSTEM
