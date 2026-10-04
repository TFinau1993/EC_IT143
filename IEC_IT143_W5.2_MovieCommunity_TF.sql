/*****************************************************************************************************************
NAME:    EC_IT143_W5.2_MovieCommunity_Tf
PURPOSE: Answer four questions about my MovieCommunity data.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/05/2026   TFinau      1. Created MovieCommunity analysis for assignment 5.2.


RUNTIME: 
Xm Xs

NOTES: 
This script uses SQL to answer four questions about my MovieCommunity data.
 
******************************************************************************************************************/

-- Q1: How many movies are in each genre?
-- Original Author: Luseane Finau
-- A1: This query counts how many movies are in each genre.

SELECT
    g.GenreName,
    COUNT(mg.MovieID) AS NumberOfMovies
FROM dbo.Genres AS g
LEFT JOIN dbo.MovieGenres AS mg
    ON g.GenreID = mg.GenreID
GROUP BY
    g.GenreName
ORDER BY
    NumberOfMovies DESC;

-- Q2: Which movies have the longest duration?
-- Original Author: Luseane Finau
-- A2: This query lists the movies from longest to shortest duration.

SELECT
    Title,
    DurationMinutes
FROM dbo.Movies
ORDER BY DurationMinutes DESC;

-- Q3: Which movies were released most recently?
-- Original Author: Luseane Finau
-- A3: This query lists the movies from newest to oldest.

SELECT
    Title,
    ReleaseYear
FROM dbo.Movies
ORDER BY ReleaseYear DESC;

-- Q4: Which director directed each movie?
-- Original Author: Luseane Finau
-- A4: This query shows each movie and its director.

SELECT
    m.Title,
    d.DirectorName
FROM dbo.Movies AS m
INNER JOIN dbo.Directors AS d
    ON m.DirectorID = d.DirectorID
ORDER BY
    m.Title;