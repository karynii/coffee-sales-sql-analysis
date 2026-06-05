</> MySQL
/*
Project: Coffee Sales Analysis

Business Questions

Purpose:
Answer key business questions
using SQL and generate actionable insights.
*/



-- Question 1
-- Which coffee products generate the most revenue?

SELECT
coffee_name,
ROUND(SUM(money),2) AS revenue
FROM coffee_sales
GROUP BY coffee_name
ORDER BY revenue DESC;


/*
Insight:

1. Latte generated the highest revenue
   at 26,875.30.

2. Americano with Milk ranked second
   with revenue of 24,751.12.

3. Latte and Americano with Milk
   together contributed approximately
   46% of total revenue.

4. Espresso generated the lowest revenue,
   contributing less than 3% of total sales.

Business Recommendation:

Increase promotion of Latte and
Americano with Milk products while
investigating the low performance
of Espresso.
*/


-- Question 2
-- Which coffee products are purchased most frequently?

SELECT
    coffee_name,
    COUNT(*) AS total_orders
FROM coffee_sales
GROUP BY coffee_name
ORDER BY total_orders DESC;

/*
Insight:

1. Americano with Milk is the most frequently
   purchased product with 809 transactions.

2. Latte ranks second in order volume but
   first in revenue generation.

3. This suggests Latte generates more revenue
   per transaction than Americano with Milk.

4. Espresso performs poorly in both revenue
   and order volume.

Business Recommendation:

Continue promoting Americano with Milk
for customer acquisition while leveraging
Latte as a premium revenue driver.
*/
-- Question 3
-- How does revenue change by month?

SELECT
Month_name,
Monthsort,
ROUND(SUM(money),2) AS revenue
FROM coffee_sales
GROUP BY Month_name, Monthsort
ORDER BY Monthsort;

/*
Insight:

1. March generated the highest monthly revenue
   at 15,891.64.

2. April generated the lowest monthly revenue
   at 5,719.56.

3. Revenue fluctuates significantly across months,
   suggesting possible seasonal effects.

4. February, March and October were the strongest
   performing months.

Business Recommendation:

Investigate the factors driving strong
performance in February, March and October
and replicate successful strategies during
weaker months.
*/

-- Question 4
-- Which weekday generates the most revenue?

SELECT
    Weekday,
    ROUND(SUM(money),2) AS revenue
FROM coffee_sales
GROUP BY Weekday
ORDER BY revenue DESC;

/*
Insight:

1. Tuesday generated the highest revenue
   at 18,168.38.

2. Sunday generated the lowest revenue
   at 13,336.06.

3. Weekday revenue consistently exceeds
   weekend revenue.

4. Customer purchasing behavior appears
   to be driven by workday routines.

Business Recommendation:

Focus marketing campaigns and staffing
strategies around high-performing weekdays,
particularly Tuesday and Monday.
*/

-- Question 5
-- Which time of day generates the most revenue?

SELECT
    Time_of_Day,
    ROUND(SUM(money),2) AS revenue
FROM coffee_sales
GROUP BY Time_of_Day
ORDER BY revenue DESC;

/*
Insight:

1. Night generated the highest revenue
   at 38,186.34.

2. Afternoon closely followed with
   revenue of 38,130.04.

3. Revenue is evenly distributed across
   Morning, Afternoon and Night periods.

4. Contrary to common expectations,
   Morning is the lowest-performing period.

Business Recommendation:

Maintain staffing levels throughout the day,
as customer demand remains consistently strong
across all operating periods.
*/

-- Question 6
-- Which hour generates the most revenue?

SELECT
    hour_of_day,
    ROUND(SUM(money),2) AS revenue
FROM coffee_sales
GROUP BY hour_of_day
ORDER BY revenue DESC;

/*
Insight:

1. 10 AM generated the highest revenue
   at 10,198.52.

2. Revenue shows two distinct peaks:
   - Morning (8 AM–11 AM)
   - Evening (4 PM–7 PM)

3. Revenue at 6 AM is extremely low,
   generating only 149.40.

4. Sales remain relatively stable
   throughout most operating hours.

Business Recommendation:

Increase staffing during 8 AM–11 AM
and 4 PM–7 PM.

Evaluate whether opening at 6 AM
is operationally justified given
the low revenue generated.
*/