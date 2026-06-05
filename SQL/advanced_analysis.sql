/*
Project: Coffee Sales Analysis

Advanced SQL Analysis

Purpose:
Demonstrate advanced SQL techniques
including ranking, window functions,
subqueries and cumulative analysis.
*/

-- Advanced Question 1
-- Rank products by revenue

SELECT
    coffee_name,
    ROUND(SUM(money),2) AS revenue,
    RANK() OVER (
        ORDER BY SUM(money) DESC
    ) AS revenue_rank
FROM coffee_sales
GROUP BY coffee_name;

/*
Insight:

Latte ranks as the highest revenue
generating product followed by
Americano with Milk.

The top two products contribute
a substantial share of total revenue
and should be prioritized in
marketing campaigns.
*/