DROP PROCEDURE IF EXISTS dbo.usp_restaurant_menu_category_load;
GO

CREATE PROCEDURE dbo.usp_restaurant_menu_category_load
AS

/*
NAME: dbo.usp_restaurant_menu_category_load
PURPOSE: Load the number of menu items in each category

MODIFICATION LOG:
Ver     Date        Author      Description
------- ----------- ----------- --------------------------------
1.0     09/29/2026  TFINAU      Built this script for EC IT143

RUNTIME:
1s

NOTES:
This script follows step 7 of the Answer Focused Approach
for T-SQL Data Manipulation.
*/

BEGIN

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

END;
Go
