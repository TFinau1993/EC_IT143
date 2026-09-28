-- Q: How many movies are in each genre?

-- A: Let's use the Genres and MovieGenres tables to find out...

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
