DROP VIEW IF EXISTS dbo.v_restaurant_menu_category_load;
GO

CREATE VIEW dbo.v_restaurant_menu_category_load
AS

/*
NAME: dbo.v_restaurant_menu_category_load
PURPOSE: Count the number of menu items in each category

MODIFICATION LOG:
Ver     Date        Author      Description
------- ----------- ----------- --------------------------------
1.0     09/29/2026  LFINAU      Built this script for EC IT143

NOTES:
This script follows step 4 of the Answer Focused Approach
for T-SQL Data Manipulation.
*/

SELECT
    c.CategoryName,
    COUNT(m.MenuItemID) AS NumberOfMenuItems
FROM dbo.Categories AS c
LEFT JOIN dbo.MenuItems AS m
    ON c.CategoryID = m.CategoryID
GROUP BY
    c.CategoryName;
GO