DROP TABLE IF EXISTS dbo.t_movie_genre;
GO

CREATE TABLE dbo.t_movie_genre
(
    GenreName VARCHAR(100) NOT NULL,
    NumberOfMovies INT NOT NULL,

    CONSTRAINT PK_t_movie_genre
        PRIMARY KEY CLUSTERED (GenreName ASC)
);
GO