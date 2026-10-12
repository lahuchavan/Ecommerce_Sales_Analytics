CREATE TABLE superstore (
    row_id INTEGER,
    order_id VARCHAR(30),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(30),
    customer_id VARCHAR(30),
    customer_name VARCHAR(100),
    segment VARCHAR(30),
    country VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(20),
    region VARCHAR(30),
    product_id VARCHAR(30),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name TEXT,
    sales NUMERIC(12,2),
    quantity INTEGER,
    discount NUMERIC(6,4),
    profit NUMERIC(12,2)
);

SELECT COUNT(*) FROM superstore;

SELECT COUNT(*) AS total_rows     --Open Query Tool
FROM superstore;

SELECT *               --View Your Data
FROM superstore
LIMIT 10;


--1.Calculate your business KPIs
SELECT                   
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    SUM(quantity) AS total_quantity,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers
FROM public.superstore;


--2.Analyze sales by category
SELECT                       
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;


--3.Analyze profit by region
SELECT               
    region,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY region
ORDER BY total_profit DESC;


--4.Find the top 10 products
SELECT               
    product_name,
    ROUND(SUM(sales), 2) AS total_sales
FROM public.superstore
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;


--5.Find the top 10 customers by sales
SELECT                   
    customer_id,
    customer_name,
    ROUND(SUM(sales), 2) AS total_sales
FROM public.superstore
GROUP BY customer_id, customer_name
ORDER BY total_sales DESC
LIMIT 10;

--6.Find products with negative profit
SELECT
    product_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM public.superstore
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY total_profit ASC
LIMIT 10;

--7.Calculate profit margin by category
SELECT
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        100.0 * SUM(profit) / NULLIF(SUM(sales), 0),
        2
    ) AS profit_margin_pct
FROM public.superstore
GROUP BY category
ORDER BY profit_margin_pct DESC;

--8.Analyze monthly sales and profit
SELECT
    DATE_TRUNC('month', order_date)::date AS sales_month,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM public.superstore
GROUP BY 1
ORDER BY 1;

--9.Rank products by sales using a window function
WITH product_sales AS (
    SELECT
        product_name,
        SUM(sales) AS total_sales
    FROM public.superstore
    GROUP BY product_name
)
SELECT
    product_name,
    ROUND(total_sales, 2) AS total_sales,
    DENSE_RANK() OVER (
        ORDER BY total_sales DESC
    ) AS sales_rank
FROM product_sales
ORDER BY sales_rank
LIMIT 20;