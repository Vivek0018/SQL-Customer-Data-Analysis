
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

- 📅 **Monthly Revenue Trend**
- 💰 **Top 10 Spending Customers**
- 📍 **Revenue Distribution by Location**
- 🛍️ **Popular Product Categories**
- 🔁 **Repeat Customer Rate**


## 🧪 How to Use

1. Create a Snowflake account
2. Upload `customer_transactions.csv`
3. Run `customer_analysis_queries.sql` in your worksheet
4. Create views from `snowflake_views.sql`
5. Query and explore!

---
