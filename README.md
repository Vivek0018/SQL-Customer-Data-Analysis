
# SQL-Based Customer Data Analysis Project

This project demonstrates customer transaction analysis using SQL and Snowflake. It includes a dataset, schema, optimized queries, and a stored procedure for dynamic reporting.

## Included Files
- customer_transactions.csv: Simulated transaction data
- customer_analysis_queries.sql: SQL insights
- stored_procedure_example.sql: Snowflake stored procedure
- README.md: Project summary and explanation

## Optimized Query (CTE)
```sql
WITH filtered_data AS (
    SELECT location, amount
    FROM customer_transactions
    WHERE transaction_date BETWEEN '2024-01-01' AND '2024-12-31'
)
SELECT location, ROUND(SUM(amount), 2) AS total_revenue
FROM filtered_data
GROUP BY location;
```
