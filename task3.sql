-- =========================================================
-- TASK 3: SQL FOR DATA ANALYSIS
-- Dataset: Sample Superstore
-- Table Name: orders
-- =========================================================


-- Query 1: View all data from the orders table

SELECT *
FROM orders;


-- Query 2: Display all orders where Sales is greater than 500

SELECT *
FROM orders
WHERE Sales > 500;


-- Query 3: Sort all orders by Profit in descending order

SELECT *
FROM orders
ORDER BY Profit DESC;


-- Query 4: Find the total sales for each Category

SELECT Category,
       SUM(Sales) AS TotalSales
FROM orders
GROUP BY Category;


-- Query 5: Find the average sales of all orders

SELECT AVG(Sales) AS AverageSales
FROM orders;


-- Query 6: Find the total profit for each Region

SELECT Region,
       SUM(Profit) AS TotalProfit
FROM orders
GROUP BY Region
ORDER BY TotalProfit DESC;


-- Query 7: Count the number of orders in each Segment

SELECT Segment,
       COUNT(*) AS NumberOfOrders
FROM orders
GROUP BY Segment;


-- Query 8: Find the highest sales value

SELECT MAX(Sales) AS HighestSale
FROM orders;


-- Query 9: Display orders where Sales is greater than the average Sales (Subquery)

SELECT *
FROM orders
WHERE Sales >
(
    SELECT AVG(Sales)
    FROM orders
);


-- Query 10: Create a view named HighProfitOrders for orders with Profit greater than 100

CREATE VIEW HighProfitOrders AS
SELECT *
FROM orders
WHERE Profit > 100;


-- Display all records from the HighProfitOrders view

SELECT *
FROM HighProfitOrders;


-- Query 11: Create an index on the Category column to improve query performance

CREATE INDEX idx_category
ON orders(Category);


-- Query 12: Display the Top 10 orders with the highest Sales

SELECT *
FROM orders
ORDER BY Sales DESC
LIMIT 10;