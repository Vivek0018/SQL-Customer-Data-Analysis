
-- 🔁 View 1: Revenue by Product Category and Location
CREATE OR REPLACE VIEW vw_category_revenue_by_location AS
SELECT 
    product_category,
    location,
    ROUND(SUM(amount), 2) AS total_revenue
FROM customer_transactions
GROUP BY product_category, location;

-- 📅 View 2: Monthly Revenue Trend
CREATE OR REPLACE VIEW vw_monthly_revenue AS
SELECT 
    TO_CHAR(transaction_date, 'YYYY-MM') AS month,
    ROUND(SUM(amount), 2) AS total_revenue
FROM customer_transactions
GROUP BY month
ORDER BY month;

-- 👤 View 3: Top Spending Customers
CREATE OR REPLACE VIEW vw_top_customers AS
SELECT 
    customer_id,
    ROUND(SUM(amount), 2) AS total_spent
FROM customer_transactions
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

-- 📍 View 4: Revenue by Location
CREATE OR REPLACE VIEW vw_revenue_by_location AS
SELECT 
    location,
    ROUND(SUM(amount), 2) AS total_revenue
FROM customer_transactions
GROUP BY location
ORDER BY total_revenue DESC;

-- 🔁 View 5: Repeat Customers
CREATE OR REPLACE VIEW vw_repeat_customers AS
WITH customer_tx_count AS (
    SELECT customer_id, COUNT(*) AS tx_count
    FROM customer_transactions
    GROUP BY customer_id
)
SELECT 
    customer_id,
    tx_count
FROM customer_tx_count
WHERE tx_count > 1;

-- 🛍️ View 6: Popular Product Categories
CREATE OR REPLACE VIEW vw_popular_categories AS
SELECT 
    product_category,
    ROUND(SUM(amount), 2) AS total_revenue
FROM customer_transactions
GROUP BY product_category
ORDER BY total_revenue DESC;

-- 📈 View 7: Repeat Customer Rate
CREATE OR REPLACE VIEW vw_repeat_customer_rate AS
WITH total_customers AS (
    SELECT COUNT(DISTINCT customer_id) AS total FROM customer_transactions
),
repeat_customers AS (
    SELECT COUNT(*) AS repeat FROM (
        SELECT customer_id
        FROM customer_transactions
        GROUP BY customer_id
        HAVING COUNT(*) > 1
    ) AS r
)
SELECT 
    repeat,
    total,
    ROUND((repeat * 100.0 / total), 2) AS repeat_rate_percentage
FROM repeat_customers, total_customers;
