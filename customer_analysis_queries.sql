
-- SCHEMA
CREATE TABLE customer_transactions (
    customer_id VARCHAR,
    transaction_id VARCHAR,
    transaction_date DATE,
    amount DECIMAL(10,2),
    location VARCHAR,
    product_category VARCHAR
);

-- Monthly Revenue Trend
SELECT 
    TO_CHAR(transaction_date, 'YYYY-MM') AS month,
    ROUND(SUM(amount), 2) AS total_revenue
FROM customer_transactions
GROUP BY month
ORDER BY month;

-- Top Customers
SELECT 
    customer_id,
    ROUND(SUM(amount), 2) AS total_spent
FROM customer_transactions
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- Category Popularity
SELECT 
    product_category,
    COUNT(*) AS total_purchases,
    ROUND(SUM(amount), 2) AS total_revenue
FROM customer_transactions
GROUP BY product_category
ORDER BY total_revenue DESC;

-- Revenue by Location
SELECT 
    location,
    ROUND(SUM(amount), 2) AS total_revenue
FROM customer_transactions
GROUP BY location
ORDER BY total_revenue DESC;

-- Repeat Customer Rate
WITH customer_tx_count AS (
    SELECT customer_id, COUNT(*) AS tx_count
    FROM customer_transactions
    GROUP BY customer_id
)
SELECT 
    COUNT(CASE WHEN tx_count > 1 THEN 1 END) AS repeat_customers,
    COUNT(*) AS total_customers,
    ROUND(COUNT(CASE WHEN tx_count > 1 THEN 1 END) * 100.0 / COUNT(*), 2) AS repeat_rate_percent
FROM customer_tx_count;
