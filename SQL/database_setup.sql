/*
Project: Coffee Sales Analysis

Database Setup
*/

CREATE DATABASE coffee_sales;

USE coffee_sales;

/*
Dataset imported using
MySQL Workbench Table Data Import Wizard

Source:
Coffee_sales.csv
*/
-- prompt to test that the data imported successfully
SELECT *
FROM coffee_sales
LIMIT 10;