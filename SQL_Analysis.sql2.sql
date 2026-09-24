CREATE DATABASE supermarket_db;
USE supermarket_db;

CREATE TABLE supermarket_sales (
    Invoice_ID VARCHAR(20),
    Date DATE,
    Branch VARCHAR(10),
    CITY VARCHAR(50),
    Category VARCHAR(100),
    Product VARCHAR(100),
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Payment_Method VARCHAR(50),
    Customer_Type VARCHAR(50),
    Gender VARCHAR(20),
    Rating DECIMAL(3,2),
    Month VARCHAR(20),
    TOTAL_SALES DECIMAL(12,2)
);


SELECT COUNT(*) AS total_rows
FROM supermarket_sales_final;

DESCRIBE supermarket_sales_final;

SELECT *
FROM supermarket_sales_final
LIMIT 10;
-- Total number of sales records
SELECT COUNT(*) AS total_transactions
FROM supermarket_sales_final;
-- Total Sales
SELECT ROUND(SUM(TOTAL_SALES), 2) AS total_sales
FROM supermarket_sales_final;
-- Average Sale
SELECT ROUND(AVG(TOTAL_SALES), 2) AS average_sale
FROM supermarket_sales_final;
-- Minimum and Maximum Sale
SELECT 
    MIN(TOTAL_SALES) AS minimum_sale,
    MAX(TOTAL_SALES) AS maximum_sale
FROM supermarket_sales_final;
-- Sales by City
SELECT 
    CITY,
    ROUND(SUM(TOTAL_SALES), 2) AS total_sales
FROM supermarket_sales_final
GROUP BY CITY
ORDER BY total_sales DESC;
-- Number of transactions by City
SELECT 
    CITY,
    COUNT(*) AS total_transactions
FROM supermarket_sales_final
GROUP BY CITY
ORDER BY total_transactions DESC;
-- Sales by Product Line
SELECT 
    PRODUCT,
    ROUND(SUM(TOTAL_SALES), 2) AS total_sales
FROM supermarket_sales_final
GROUP BY PRODUCT
ORDER BY total_sales DESC;
-- Number of sales by Product Line
SELECT 
    PRODUCT,
    COUNT(*) AS total_transactions
FROM supermarket_sales_final
GROUP BY PRODUCT
ORDER BY total_transactions DESC;
-- Average sale by Product Line
SELECT 
    PRODUCT,
    ROUND(AVG(TOTAL_SALES), 2) AS average_sale
FROM supermarket_sales_final
GROUP BY PRODUCT
ORDER BY average_sale DESC;
-- Sales by Gender
SELECT 
    GENDER,
    ROUND(SUM(TOTAL_SALES), 2) AS total_sales
FROM supermarket_sales_final
GROUP BY GENDER
ORDER BY total_sales DESC;
-- Transactions by Gender
SELECT 
    GENDER,
    COUNT(*) AS total_transactions
FROM supermarket_sales_final
GROUP BY GENDER;
-- Sales by Customer Type
SELECT 
    CUSTOMER_TYPE,
    ROUND(SUM(TOTAL_SALES), 2) AS total_sales
FROM supermarket_sales_final
GROUP BY CUSTOMER_TYPE
ORDER BY total_sales DESC;
-- Customer Type transactions
SELECT 
    CUSTOMER_TYPE,
    COUNT(*) AS total_transactions
FROM supermarket_sales_final
GROUP BY CUSTOMER_TYPE
ORDER BY total_transactions DESC;
-- Most used Payment Method
SELECT 
    Payment_Method,
    COUNT(*) AS total_transactions
FROM supermarket_sales_final
GROUP BY Payment_Method
ORDER BY total_transactions DESC;
-- Sales by Payment Method
SELECT 
    Payment_Method,
    ROUND(SUM(TOTAL_SALES), 2) AS total_sales
FROM supermarket_sales_final
GROUP BY Payment_Method
ORDER BY total_sales DESC;
-- Sales by Branch
SELECT 
    BRANCH,
    ROUND(SUM(TOTAL_SALES), 2) AS total_sales
FROM supermarket_sales_final
GROUP BY BRANCH
ORDER BY total_sales DESC;
-- Average Sale by Branch
SELECT 
    BRANCH,
    ROUND(AVG(TOTAL_SALES), 2) AS average_sale
FROM supermarket_sales_final
GROUP BY BRANCH
ORDER BY average_sale DESC;
-- Average Rating by City
SELECT 
    CITY,
    ROUND(AVG(RATING), 2) AS average_rating
FROM supermarket_sales_final
GROUP BY CITY
ORDER BY average_rating DESC;
-- Average Rating by Product Line
SELECT 
    PRODUCT,
    ROUND(AVG(RATING), 2) AS average_rating
FROM supermarket_sales_final
GROUP BY PRODUCT
ORDER BY average_rating DESC;
-- Sales by Date
SELECT 
    DATE,
    ROUND(SUM(TOTAL_SALES), 2) AS daily_sales
FROM supermarket_sales_final
GROUP BY DATE
ORDER BY DATE;
-- Highest Sales Day
SELECT 
    DATE,
    ROUND(SUM(TOTAL_SALES), 2) AS daily_sales
FROM supermarket_sales_final
GROUP BY DATE
ORDER BY daily_sales DESC
LIMIT 1;
 -- Highest-selling Product Line
 SELECT 
    PRODUCT,
    ROUND(SUM(TOTAL_SALES), 2) AS total_sales
FROM supermarket_sales_final
GROUP BY PRODUCT
ORDER BY total_sales DESC
LIMIT 1;
-- Highest-selling City
SELECT 
    CITY,
    ROUND(SUM(TOTAL_SALES), 2) AS total_sales
FROM supermarket_sales_final
GROUP BY CITY
ORDER BY total_sales DESC
LIMIT 1;
-- Most Popular Payment Method
SELECT 
    Payment_Method,
    COUNT(*) AS transactions
FROM supermarket_sales_final
GROUP BY Payment_Method
ORDER BY transactions DESC
LIMIT 1;
-- Highest Revenue Branch
SELECT 
    BRANCH,
    ROUND(SUM(TOTAL_SALES), 2) AS total_sales
FROM supermarket_sales_final
GROUP BY BRANCH
ORDER BY total_sales DESC
LIMIT 1;
-- Best-rated Product Line
SELECT 
    PRODUCT,
    ROUND(AVG(RATING), 2) AS average_rating
FROM supermarket_sales_final
GROUP BY PRODUCT
ORDER BY average_rating DESC
LIMIT 1;
-- City + Product Line Sales
SELECT 
    CITY,
    PRODUCT,
    ROUND(SUM(TOTAL_SALES), 2) AS total_sales
FROM supermarket_sales_final
GROUP BY CITY, PRODUCT
ORDER BY total_sales DESC;
-- Gender + Product Line
SELECT 
    GENDER,
    PRODUCT,
    COUNT(*) AS transactions,
    ROUND(SUM(TOTAL_SALES), 2) AS total_sales
FROM supermarket_sales_final
GROUP BY GENDER, PRODUCT
ORDER BY total_sales DESC;
-- Customer Type + Payment
SELECT 
    CUSTOMER_TYPE,
    Payment_Method,
    COUNT(*) AS transactions
FROM supermarket_sales_final
GROUP BY CUSTOMER_TYPE, Payment_Method
ORDER BY transactions DESC;
-- City + Gender Sales
SELECT 
    CITY,
    GENDER,
    ROUND(SUM(TOTAL_SALES), 2) AS total_sales
FROM supermarket_sales_final
GROUP BY CITY, GENDER
ORDER BY total_sales DESC;

SELECT
    COUNT(*) AS total_transactions,
    ROUND(SUM(TOTAL_SALES), 2) AS total_sales,
    ROUND(AVG(TOTAL_SALES), 2) AS average_sale,
    ROUND(MIN(TOTAL_SALES), 2) AS minimum_sale,
    ROUND(MAX(TOTAL_SALES), 2) AS maximum_sale,
    ROUND(AVG(RATING), 2) AS average_rating
FROM supermarket_sales_final;

