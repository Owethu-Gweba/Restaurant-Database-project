# Restaurant Database Analysis Project

## Overview

This project analyzes restaurant menu and order data using SQL queries in Microsoft SQL Server. The objective is to explore menu offerings, understand customer ordering patterns, and generate business insights from restaurant sales data.

The project uses two main tables:

* **menu_items** – Contains information about menu items, categories, and prices.
* **order_details** – Contains customer order transactions, including order dates and purchased items.

## Database

**Database Name:** `Restaurant_db`

## Project Objectives

The project aims to answer key business questions such as:

* How many items are available on the menu?
* Which menu items are the most and least expensive?
* How many dishes exist in each category?
* What is the average price per category?
* How many orders were placed during the recorded period?
* Which menu items are ordered most frequently?
* Which orders generated the highest revenue?
* What purchasing trends can be identified from customer behavior?

---

## Part 1: Menu Analysis

### Tasks Performed

1. Displayed all menu items.
2. Counted the total number of menu items.
3. Identified the least expensive menu item.
4. Identified the most expensive menu item.
5. Counted the number of Italian dishes available.
6. Determined the least and most expensive Italian dishes.
7. Counted the number of dishes in each category.
8. Calculated the average price of dishes within each category.

### Business Value

These queries help management understand:

* Product variety across categories.
* Pricing strategy effectiveness.
* Category distribution.
* Average menu pricing.

---

## Part 2: Order Analysis

### Tasks Performed

1. Displayed all order records.
2. Determined the order date range.
3. Counted the total number of unique orders.
4. Counted the total number of items sold.
5. Identified orders containing the highest number of items.
6. Determined how many orders contained more than 12 items.

### Business Value

These queries provide insights into:

* Customer purchasing behavior.
* Order volume.
* Peak order sizes.
* Overall restaurant activity.

---

## Part 3: Sales and Revenue Analysis

### Tasks Performed

1. Joined the `menu_items` and `order_details` tables.
2. Determined the most and least ordered menu items.
3. Identified the top 5 highest-spending orders.
4. Investigated high-value customer orders.
5. Generated insights from spending patterns.

### Business Value

This analysis helps management:

* Identify popular menu items.
* Detect underperforming products.
* Understand customer spending habits.
* Optimize menu offerings.
* Improve revenue generation strategies.

---

## SQL Concepts Demonstrated

This project showcases the use of:

* SELECT
* WHERE
* ORDER BY
* Aggregate Functions:

  * COUNT()
  * SUM()
  * AVG()
  * MIN()
  * `MAX()
* GROUP BY
* HAVING
* LEFT JOIN
* Aliases
* Subqueries


## Sample Queries

### Count Total Menu Items

sql
SELECT COUNT(*)
FROM menu_items;


### Calculate Average Price by Category

sql
SELECT category,
       AVG(price) AS avg_price
FROM menu_items
GROUP BY category;


### Find Top 5 Highest Spending Orders

sql
SELECT TOP 5
       order_id,
       SUM(price) AS total_spend
FROM order_details od
LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC;


Key Insights

* Menu categories vary in both item count and average pricing.
* Certain menu items are significantly more popular than others.
* Large orders contribute disproportionately to restaurant revenue.
* Customer spending patterns can be used to create promotions and optimize menu offerings.
* Data-driven decision-making can improve profitability and customer satisfaction.


Technologies Used

* Microsoft SQL Server
* SQL Server Management Studio (SSMS)
* Transact-SQL (T-SQL)



Project Structure

Restaurant-SQL-Analysis/
│
├── create_restaurant_db.sql
├── customer_behavior.sql
├── menu_items.csv
├── menu_items_table.sql
├── order_details.csv
├── orders_table.sql
├── restaurant_db_data_dictionary.csv
└── README.md




Author

Developed as a SQL Data Analysis Portfolio Project demonstrating database querying, data exploration, business intelligence, and analytical problem-solving using Microsoft SQL Server.
