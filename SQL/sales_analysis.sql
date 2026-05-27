create database sales_analysis
use sales_analysis

SELECT TOP 10 * FROM [dbo].[Sample - Superstore]

--Total Sales
SELECT 
    SUM(Sales) AS Total_Sales
FROM [dbo].[Sample - Superstore];

--Total Profit
SELECT 
    SUM(Profit) AS Total_Profit
FROM [dbo].[Sample - Superstore];

--Total Orders
SELECT 
    COUNT(DISTINCT [Order_ID]) AS Total_Orders
FROM [dbo].[Sample - Superstore];

--Sales by Category
SELECT 
    Category,
    SUM(Sales) AS Total_Sales
FROM [dbo].[Sample - Superstore]
GROUP BY Category
ORDER BY Total_Sales DESC;

--Profit by Category
SELECT 
    Category,
    SUM(Profit) AS Total_Profit
FROM [dbo].[Sample - Superstore]
GROUP BY Category
ORDER BY Total_Profit DESC;

--Top 10 Products by Sales
SELECT TOP 10
    [Product_Name],
    SUM(Sales) AS Total_Sales
FROM [dbo].[Sample - Superstore]
GROUP BY [Product_Name]
ORDER BY Total_Sales DESC;

--Sales by Region
SELECT 
    Region,
    SUM(Sales) AS Total_Sales
FROM [dbo].[Sample - Superstore]
GROUP BY Region
ORDER BY Total_Sales DESC;





















