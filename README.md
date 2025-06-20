
# SQL-Based Customer Data Analysis Project

Analyze customer transactions using SQL on Snowflake to extract actionable business insights. This project demonstrates query optimization, view creation, and practical data analysis for retail-like datasets.

---

## 📁 Project Structure
 _________________________________________________________________________________
| File                            | Description                                   |
|---------------------------------|-----------------------------------------------|
| `customer_transactions.csv`     | Synthetic dataset of 1,000 transactions       |
| `customer_analysis_queries.sql` | SQL queries for trend and behavior analysis   |
| `snowflake_views.sql`           | Reusable SQL views for quick analysis         |
| `README.md`                     | Project overview & documentation              |
 ---------------------------------------------------------------------------------

## 🧱 Database Schema

```sql
CREATE TABLE customer_transactions (
    customer_id STRING,
    transaction_id STRING,
    transaction_date DATE,
    amount NUMBER(10,2),
    location STRING,
    product_category STRING
);
```


## 🔍 Business Insights Extracted

### 📅 Monthly Revenue Trend
Analyze how revenue fluctuates month-over-month to identify seasonal patterns or growth trends.  
→ **View:** `vw_monthly_revenue`

---

### 💰 Top 10 Spending Customers
Identify the highest spending customers to prioritize retention and engagement strategies.  
→ **View:** `vw_top_customers`

---

### 📍 Revenue Distribution by Location
Understand which geographical regions contribute most to overall revenue.  
→ **View:** `vw_revenue_by_location`

---

### 🛍️ Popular Product Categories
Discover which product categories generate the most revenue overall.  
→ **View:** `vw_popular_categories`

---

### 🔁 Repeat Customers
List all customers who made more than one transaction — useful for loyalty analysis.  
→ **View:** `vw_repeat_customers`

---

### 📈 Repeat Customer Rate
Calculate the percentage of customers who made multiple purchases, indicating loyalty levels.  
→ **View:** `vw_repeat_customer_rate`

---

### 🌍 Revenue by Category and Location
Drill down into revenue by both product category and customer location to identify localized category performance.  
→ **View:** `vw_category_revenue_by_location`



## 🧪 How to Use

1. Create a Snowflake account
2. Upload `customer_transactions.csv`
3. Run `customer_analysis_queries.sql` in your worksheet
4. Create views from `snowflake_views.sql`
5. Query and explore!

---
