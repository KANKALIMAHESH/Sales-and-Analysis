
-- Task 6: Sales Trend Analysis Using Aggregations
-- Analyzing monthly revenue and order volume from online_sales table

-- Creating a simulated table (only if dataset is not provided)
CREATE TABLE IF NOT EXISTS online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

-- Inserting sample data (you can skip this if you have actual data)
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-15', 250.00, 101),
(2, '2023-01-20', 300.00, 102),
(3, '2023-02-05', 400.00, 101),
(4, '2023-02-20', 350.00, 103),
(5, '2023-03-10', 500.00, 104);

-- Query to analyze monthly revenue and order volume
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;
