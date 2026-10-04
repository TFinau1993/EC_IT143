/*****************************************************************************************************************
NAME:    EC_IT143_W5.2_Restaurant_lf
PURPOSE: Answer four questions about my Restaurant Community data.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/05/2026   LKAF          Created Restaurant analysis for assignment 5.2.

RUNTIME:
Xm Xs

NOTES:
This script uses SQL to answer four questions about my Restaurant Community data.
*/

-- Q1: Which food items do customers order the most from the restaurant?
-- Original Author: Luseane Finau
-- A1: This query shows each food item and the total quantity ordered.
 
SELECT
m.ItemName,
SUM(od.Quantity) AS TotalQuantityOrdered
FROM dbo.MenuItems AS m
INNER JOIN dbo.OrderDetails AS od
ON m.MenuItemID = od.MenuItemID
GROUP BY
m.ItemName
ORDER BY
TotalQuantityOrdered DESC;

-- Q2: Which customers spend the most money when ordering from the restaurant?
-- Original Author: Luseane Finau
-- A2: This query shows each customer and their total amount spent.

SELECT
    c.FirstName,
    c.LastName,
    SUM(o.TotalAmount) AS TotalSpent
FROM dbo.Customers AS c
INNER JOIN dbo.Orders AS o
    ON c.CustomerID = o.CustomerID
GROUP BY
    c.CustomerID,
    c.FirstName,
    c.LastName
ORDER BY
    TotalSpent DESC;

    -- Q3: Which food category is ordered the most by customers at the restaurant?
-- Original Author: Luseane Finau
-- A3: This query shows each food category and the total quantity ordered.

SELECT
    c.CategoryName,
    SUM(od.Quantity) AS TotalQuantityOrdered
FROM dbo.Categories AS c
INNER JOIN dbo.MenuItems AS m
    ON c.CategoryID = m.CategoryID
INNER JOIN dbo.OrderDetails AS od
    ON m.MenuItemID = od.MenuItemID
GROUP BY
    c.CategoryName
ORDER BY
    TotalQuantityOrdered DESC;

-- Q4: Which menu categories generate the highest total sales,
-- and which individual menu items contribute the most to those sales?
-- Original Author: Eugene Offei Awuku
-- A4: This query calculates total sales by category and menu item
-- using quantity multiplied by unit price.

SELECT
    c.CategoryName,
    m.ItemName,
    SUM(od.Quantity * od.UnitPrice) AS TotalSales
FROM dbo.Categories AS c
INNER JOIN dbo.MenuItems AS m
    ON c.CategoryID = m.CategoryID
INNER JOIN dbo.OrderDetails AS od
    ON m.MenuItemID = od.MenuItemID
GROUP BY
    c.CategoryName,
    m.ItemName
ORDER BY
    TotalSales DESC;