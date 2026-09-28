-- Q: How many movies are in each genre?

-- A: Let's use the Genres and MovieGenres tables to find out...


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