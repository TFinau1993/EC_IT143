-- Q: How many menu items are in each category?

-- A: Let's use the Categories and MenuItems tables to find out...

SELECT
    c.CategoryName,
    COUNT(m.MenuItemID) AS NumberOfMenuItems
FROM dbo.Categories AS c
LEFT JOIN dbo.MenuItems AS m
    ON c.CategoryID = m.CategoryID
GROUP BY
    c.CategoryName
ORDER BY
    NumberOfMenuItems DESC;