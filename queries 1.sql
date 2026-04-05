USE retail_project;
SELECT * FROM retail LIMIT 10;
SELECT * 
FROM retail
WHERE Description IS NULL;
SELECT SUM(Quantity) AS Total_Quantity
FROM retail;
SELECT SUM(Quantity * Price) AS Total_Revenue
FROM retail;
SELECT Description, SUM(Quantity) AS Total_Sold
FROM retail
GROUP BY Description
ORDER BY Total_Sold DESC
LIMIT 10;
SELECT COUNT(DISTINCT Invoice) AS Total_Orders
FROM retail;
SELECT Country, SUM(Quantity * Price) AS Revenue
FROM retail
GROUP BY Country
ORDER BY Revenue DESC;
