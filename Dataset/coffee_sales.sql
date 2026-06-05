CREATE DATABASE coffee_sales;
USE coffee_sales;
USE coffee_sales;

SELECT *
FROM coffee_sales
LIMIT 10;
DESCRIBE coffee_sales ;
-- Check for missing values

SELECT
SUM(hour_of_day IS NULL) AS missing_hour,
SUM(cash_type IS NULL) AS missing_cash_type,
SUM(money IS NULL) AS missing_money,
SUM(coffee_name IS NULL) AS missing_coffee,
SUM(Time_of_Day IS NULL) AS missing_time_of_day,
SUM(Weekday IS NULL) AS missing_weekday,
SUM(Month_name IS NULL) AS missing_month,
SUM(Date IS NULL) AS missing_date,
SUM(Time IS NULL) AS missing_time
FROM coffee_sales;

-- Check for duplicate records

SELECT
hour_of_day,
cash_type,
money,
coffee_name,
Date,
Time,
COUNT(*) AS duplicate_count
FROM coffee_sales
GROUP BY
hour_of_day,
cash_type,
money,
coffee_name,
Date,
Time
HAVING COUNT(*) > 1;

-- Check for negative sales values

SELECT *
FROM coffee_sales
WHERE money < 0;

-- Check for zero-value transactions

SELECT *
FROM coffee_sales
WHERE money = 0;

-- List all products

SELECT DISTINCT coffee_name
FROM coffee_sales
ORDER BY coffee_name;

SELECT *
FROM coffee_sales
LIMIT 20;

-- Total number of transactions

SELECT
COUNT(*) AS total_transactions
FROM coffee_sales;

-- Total revenue generated

SELECT
ROUND(SUM(money),2) AS total_revenue
FROM coffee_sales;

-- Average value per transaction

SELECT
ROUND(AVG(money),2) AS average_transaction_value
FROM coffee_sales;

-- Date range covered by dataset

SELECT
MIN(Date) AS first_transaction,
MAX(Date) AS last_transaction
FROM coffee_sales;

-- Number of unique products

SELECT
COUNT(DISTINCT coffee_name) AS unique_products
FROM coffee_sales;
-- Number of payment methods

SELECT
COUNT(DISTINCT cash_type) AS payment_methods
FROM coffee_sales;


-- Question 1
-- Which coffee products generate the most revenue?

SELECT
coffee_name,
ROUND(SUM(money),2) AS revenue
FROM coffee_sales
GROUP BY coffee_name
ORDER BY revenue DESC;

SELECT
    coffee_name,
    COUNT(*) AS total_orders
FROM coffee_sales
GROUP BY coffee_name
ORDER BY total_orders DESC;

SELECT
Month_name,
Monthsort,
ROUND(SUM(money),2) AS revenue
FROM coffee_sales
GROUP BY Month_name, Monthsort
ORDER BY Monthsort;

SELECT
    Weekday,
    ROUND(SUM(money),2) AS revenue
FROM coffee_sales
GROUP BY Weekday
ORDER BY revenue DESC;

-- Question 5
-- Which time of day generates the most revenue?

SELECT
    Time_of_Day,
    ROUND(SUM(money),2) AS revenue
FROM coffee_sales
GROUP BY Time_of_Day
ORDER BY revenue DESC;