DROP VIEW IF EXISTS dbo.v_movie_genre_load;
GO

CREATE VIEW dbo.v_movie_genre_load
AS

/*
NAME: dbo.v_movie_genre_load
PURPOSE: Count the number of movies in each genre

MODIFICATION LOG:
Ver     Date        Author      Description
------- ----------- ----------- --------------------------------
1.0     09/29/2026  LFINAU      Built this script for EC IT143

NOTES:
This script follows step 4 of the Answer Focused Approach
for T-SQL Data Manipulation.
*/

SELECT
    g.GenreName,
    COUNT(mg.MovieID) AS NumberOfMovies
FROM dbo.Genres AS g
LEFT JOIN dbo.MovieGenres AS mg
    ON g.GenreID = mg.GenreID
GROUP BY
    g.GenreName;
GO