# ☕ Coffee Sales Analysis Using MySQL

## Project Overview

This project analyzes coffee shop sales transactions using MySQL to uncover business insights related to product performance, sales trends, customer purchasing behavior, and revenue generation.



---

## Business Problem

Coffee shop managers need to understand:

- Which products generate the most revenue
- Which products are purchased most frequently
- Which months perform best
- Which days drive the most sales
- What times of day generate the highest revenue
- How revenue accumulates over time

The analysis provides data-driven recommendations that can support staffing, marketing, inventory, and product strategy decisions.

---

## Dataset Information

**Dataset:** Coffee Sales Dataset

**Source:** Kaggle

### Dataset Summary

| Metric | Value |
|----------|---------|
| Total Transactions | 3,547 |
| Total Revenue | 112,245.58 |
| Average Transaction Value | 31.65 |
| Analysis Period | March 2024 – March 2025 |
| Unique Products | 8 |
| Payment Methods | 1 |

---

## Tools Used

- MySQL Workbench
- SQL
- Git
- GitHub
- VS Code

---

## Project Structure

```text
coffee-sales-sql-analysis

│
├── Dataset
│   └── Coffee_sales.csv
│
├── SQL
│   ├── database_setup.sql
│   ├── data_cleaning.sql
│   ├── exploratory_analysis.sql
│   ├── business_questions.sql
│   └── advanced_analysis.sql
│
├── Results
│
├── Images
│
└── README.md
```

---

## SQL Skills Demonstrated

### Data Cleaning

- Missing value checks
- Duplicate record detection
- Revenue validation
- Product consistency checks

### Exploratory Data Analysis

- Transaction analysis
- Revenue analysis
- Product analysis
- Date range analysis

### Business Analysis

- Revenue by product
- Product popularity analysis
- Monthly sales trends
- Weekday performance analysis
- Time-of-day analysis
- Hourly sales analysis

### Advanced SQL

- Window Functions
- RANK()
- Running Totals
- Subqueries
- Revenue Contribution Analysis
- HAVING Clauses
- Aggregations

---

# Key Findings

## 1. Latte Generated the Highest Revenue

| Product | Revenue |
|----------|---------:|
| Latte | 26,875.30 |
| Americano with Milk | 24,751.12 |
| Cappuccino | 17,439.14 |

### Insight

Latte generated the highest revenue and accounted for approximately **23.94%** of total sales revenue.

---

## 2. Americano with Milk Was the Most Purchased Product

| Product | Orders |
|----------|---------:|
| Americano with Milk | 809 |
| Latte | 757 |
| Americano | 564 |

### Insight

Americano with Milk was the most frequently purchased product, demonstrating strong customer demand.

---

## 3. March Was the Best Performing Month

| Month | Revenue |
|---------|---------:|
| March | 15,891.64 |
| October | 13,891.16 |
| February | 13,215.48 |

### Insight

March generated the highest monthly revenue, contributing significantly to annual sales performance.

---

## 4. Tuesday Generated the Highest Revenue

| Weekday | Revenue |
|----------|---------:|
| Tuesday | 18,168.38 |
| Monday | 17,363.10 |
| Friday | 16,802.66 |

### Insight

Weekdays consistently outperformed weekends, suggesting that customer purchasing behavior is closely tied to workday routines.

---

## 5. 10 AM Was the Peak Revenue Hour

| Hour | Revenue |
|---------|---------:|
| 10 AM | 10,198.52 |
| 4 PM | 9,031.84 |
| 11 AM | 8,453.10 |

### Insight

Revenue peaked during both the morning and evening periods, indicating two distinct demand waves throughout the day.

---

## 6. Revenue Reached 112,245.58 During the Analysis Period

A cumulative revenue analysis using SQL window functions showed that total revenue exceeded:

- 35,505.98 by March
- 50,000 by June
- 100,000 by November

Final cumulative revenue reached **112,245.58**.

---

# Business Recommendations

Based on the analysis:

### Product Strategy

- Prioritize Latte and Americano with Milk promotions.
- Investigate the poor performance of Espresso.

### Operations

- Increase staffing during:
  - 8 AM – 11 AM
  - 4 PM – 7 PM

### Marketing

- Focus campaigns on high-performing weekdays.
- Replicate strategies used during high-performing months such as March and October.

### Growth Opportunities

- Analyze customer purchasing behavior in future datasets.
- Investigate opportunities to increase sales during low-performing periods.

---

# Future Improvements

Future versions of this project could include:

- Power BI Dashboard
- Revenue Forecasting
- Customer Segmentation Analysis
- Product Profitability Analysis
- Automated Reporting with Python

---

# Author

**Veronica M**

Aspiring Data Analyst with interests in:

- SQL
- Data Analytics
- Business Intelligence
- Power BI
- Python

Connect with me on GitHub to view more data analytics projects.