SELECT 
    title
FROM
    movies
WHERE
    budget > 10000000 AND ranking < 6;

SELECT 
    movies.movie_id, title
FROM
    movies
        JOIN
    genres ON movies.movie_id = genres.movie_id
WHERE
    rating > 8 AND year > 1990
        AND genre_name = 'Action';


SELECT 
    title
FROM
    movies
WHERE
    duration > 150 AND oscars > 2
        AND movie_id IN (SELECT 
            movie_id
        FROM
            genres
        WHERE
            genre_name = 'Drama');


SELECT 
    movie_id, title
FROM
    movies
WHERE
    oscars > 2
        AND movie_id IN (SELECT 
            movie_id
        FROM
            movie_stars
                JOIN
            stars ON movie_stars.star_id = stars.star_id
        WHERE
            star_name = 'Orlando Bloom'
                AND movie_id IN (SELECT 
                    movie_id
                FROM
                    movie_stars
                        JOIN
                    stars ON movie_stars.star_id = stars.star_id
                WHERE
                    star_name = 'Ian McKellen'));