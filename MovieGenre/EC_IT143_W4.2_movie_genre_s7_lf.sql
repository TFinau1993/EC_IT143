DROP PROCEDURE IF EXISTS dbo.usp_movie_genre_load;
GO

CREATE PROCEDURE dbo.usp_movie_genre_load
AS

/*
NAME: dbo.usp_movie_genre_load
PURPOSE: Load the number of movies in each genre

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

    TRUNCATE TABLE dbo.t_movie_genre;

    INSERT INTO dbo.t_movie_genre
    (
        GenreName,
        NumberOfMovies
    )
    SELECT
        v.GenreName,
        v.NumberOfMovies
    FROM dbo.v_movie_genre_load AS v;

    -- 2) Review results

    SELECT t.*
    FROM dbo.t_movie_genre AS t
    ORDER BY t.NumberOfMovies DESC;

END;
GO