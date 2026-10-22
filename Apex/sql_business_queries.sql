USE sales_analysis;

SHOW TABLES;

SELECT COUNT(*) AS total_records
FROM sales_test;


-- Q1. Top 5 Categories by Revenue
SELECT
    Category,
    ROUND(SUM(Total_Sales), 2) AS Total_Revenue
FROM sales_analysis.sales_test
GROUP BY Category
ORDER BY Total_Revenue DESC
LIMIT 5;

-- Q2. Top 5 Products by Revenue
SELECT
    Product,
    ROUND(SUM(Total_Sales), 2) AS Total_Revenue
FROM sales_analysis.sales_test
GROUP BY Product
ORDER BY Total_Revenue DESC
LIMIT 5;

-- Q3. Monthly Sales Trend
SELECT
    YEAR(STR_TO_DATE(Order_Date, '%d-%m-%Y')) AS Sales_Year,
    MONTHNAME(STR_TO_DATE(Order_Date, '%d-%m-%Y')) AS Sales_Month,
    MONTH(STR_TO_DATE(Order_Date, '%d-%m-%Y')) AS Month_Number,
    ROUND(SUM(Total_Sales), 2) AS Monthly_Sales
FROM sales_analysis.sales_test
WHERE STR_TO_DATE(Order_Date, '%d-%m-%Y') IS NOT NULL
GROUP BY
    YEAR(STR_TO_DATE(Order_Date, '%d-%m-%Y')),
    MONTHNAME(STR_TO_DATE(Order_Date, '%d-%m-%Y')),
    MONTH(STR_TO_DATE(Order_Date, '%d-%m-%Y'))
ORDER BY Sales_Year, Month_Number;

-- Q4. City-wise Sales
SELECT
    City,
    ROUND(SUM(Total_Sales), 2) AS Total_Revenue
FROM sales_analysis.sales_test
GROUP BY City
ORDER BY Total_Revenue DESC;

-- Q5. Gender-wise Sales
SELECT
    Gender,
    ROUND(SUM(Total_Sales), 2) AS Total_Revenue,
    COUNT(*) AS Total_Records
FROM sales_analysis.sales_test
GROUP BY Gender
ORDER BY Total_Revenue DESC;

# 6. Product Revenue and Quantity

SELECT
    Product,
    ROUND(SUM(Total_Sales), 2) AS Total_Revenue,
    SUM(Quantity) AS Total_Quantity
FROM sales_analysis.sales_test
GROUP BY Product
ORDER BY Total_Revenue DESC
LIMIT 5;

# 7. Category-wise Revenue , Quantity and Average Sales
SELECT
    Category,
    ROUND(SUM(Total_Sales), 2) AS Total_Revenue,
    SUM(Quantity) AS Total_Quantity,
    ROUND(AVG(Total_Sales), 2) AS Average_Sales
FROM sales_analysis.sales_test
GROUP BY Category
ORDER BY Total_Revenue DESC;