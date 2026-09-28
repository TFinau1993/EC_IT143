-- Q: How many menu items are in each category?

-- A: Let's use the Categories and MenuItems tables to find out...


-- 1) Reload data

TRUNCATE TABLE dbo.t_restaurant_menu_category;

INSERT INTO dbo.t_restaurant_menu_category
(
    CategoryName,
    NumberOfMenuItems
)
SELECT
    v.CategoryName,
    v.NumberOfMenuItems
FROM dbo.v_restaurant_menu_category_load AS v;


-- 2) Review results

SELECT t.*
FROM dbo.t_restaurant_menu_category AS t
ORDER BY t.NumberOfMenuItems DESC;