-- =====================================================
-- Online Retail SQL Analysis
-- Author: Avinash Paliwal
-- =====================================================

-- DATA UNDERSTANDING --
-- 1. Total number of transactions
SELECT COUNT(*) AS Transactions
FROM online_retail;

-- 2. Total number of unique customers
SELECT COUNT(DISTINCT CustomerID) AS Total_Customers
FROM online_retail;

-- 3. Total revenue generated
SELECT SUM(totalprice) AS Total_Revenue
FROM online_retail;

-- 4. Total number of products
SELECT COUNT(DISTINCT stockcode) AS total_products
FROM online_retail;

-- 5. Total orders per country
SELECT country, COUNT(invoiceno) AS total_orders
FROM online_Retail
GROUP BY country
ORDER BY total_orders DESC;


-- PRODUCT ANALYSIS --
-- 6. Top 10 selling products
SELECT description AS Top_Selling_product, SUM(quantity) AS total_quantity_sold
FROM online_retail
GROUP BY description
ORDER BY total_quantity_sold DESC
LIMIT 10;

-- 7. Least selling products
SELECT description AS Least_Selling_product, SUM(quantity) AS total_quantity_sold
FROM online_retail
GROUP BY description
ORDER BY total_quantity_sold
LIMIT 20;

-- 8. Products generating highest revenue
SELECT description, SUM(totalprice) AS revenue
FROM online_retail
GROUP BY description
ORDER BY revenue DESC
LIMIT 10;

-- 9. Average price of all products
SELECT AVG(UnitPrice) AS avg_product_price
FROM online_retail;


-- Customer Analysis --
-- 10. Top 10 customers by revenue
SELECT customerid , SUM(totalprice) AS Revenue
FROM online_retail
GROUP BY customerid
ORDER BY Revenue DESC
LIMIT 10;

-- 11. Customers with highest number of orders
SELECT customerid, COUNT(DISTINCT invoiceno) AS Total_Orders
FROM online_retail
GROUP BY customerid
ORDER BY Total_Orders DESC
LIMIT 10;

-- 12. Average revenue per customer
SELECT customerid,AVG(totalprice) as revenue
FROM online_retail
GROUP BY customerid;


-- Time Based Analysis -- 
-- 13. Monthly revenue trend
SELECT EXTRACT(month FROM InvoiceDate) as Month,SUM(totalprice) as Revenue
FROM online_retail
GROUP BY Month
ORDER BY Month;

-- 14. Orders per month
SELECT EXTRACT(month FROM InvoiceDate) as Month, COUNT(DISTINCT Invoiceno) as Total_Orders 
FROM online_retail
GROUP BY Month
ORDER BY Month;

-- 15. Best sales month
SELECT EXTRACT(month FROM InvoiceDate) as Month, SUM(totalprice) AS Revenue
FROM online_retail
GROUP BY Month
ORDER BY Revenue DESC
LIMIT 1;


-- Business Insights Queries (Advanced) -- 
-- 16. Cancelled orders
SELECT COUNT(*) AS cancelled_orders
FROM online_retail
WHERE InvoiceNo LIKE 'C%';

-- 17. Revenue by country
SELECT Country, SUM(totalprice) AS Total_Revenue
FROM online_retail
GROUP BY Country
ORDER BY Total_Revenue DESC;

-- 18. Average order value
SELECT AVG(order_value) AS Avg_Order_Value
FROM (
    SELECT InvoiceNo, SUM(totalprice) AS Order_Value
    FROM online_retail
    GROUP BY InvoiceNo
) t;

-- 19. Top country by revenue
SELECT Country, SUM(totalprice) AS Total_Revenue
FROM online_retail
GROUP BY Country
ORDER BY Total_Revenue DESC
LIMIT 1;

-- 20. Revenue contribution of top customers
SELECT customerid, SUM(totalprice) AS Total_Revenue
FROM online_retail
GROUP BY customerid
ORDER BY Total_Revenue DESC
LIMIT 20;