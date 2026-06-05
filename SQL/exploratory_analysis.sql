/*
Project: Coffee Sales Analysis

Exploratory Data Analysis (EDA)

Purpose:
Understand the structure, size,
and characteristics of the dataset
before conducting business analysis.
*/

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