DROP TABLE IF EXISTS dbo.t_restaurant_menu_category;
GO

CREATE TABLE dbo.t_restaurant_menu_category
(
    CategoryName VARCHAR(100) NOT NULL,
    NumberOfMenuItems INT NOT NULL,

    CONSTRAINT PK_t_restaurant_menu_category
        PRIMARY KEY CLUSTERED (CategoryName ASC)
);
GO