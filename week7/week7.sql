SELECT 
    title
FROM
    movies
WHERE
    votes > 500000 AND year < 2000
        AND movie_id IN (SELECT 
            movie_id
        FROM
            movie_directors
                JOIN
            directors ON movie_directors.director_id = directors.director_id
        WHERE
            director_name LIKE 'Quentin%');

SELECT 
    *
FROM
    movies
WHERE
    budget > 25000000
        AND movie_id IN (SELECT 
            movie_id
        FROM
            genres
        WHERE
            genre_name LIKE 'Thriller');

SELECT 
    *
FROM
    movies
WHERE
    year BETWEEN 1990 AND 2000
        AND movie_id IN (SELECT 
            movie_id
        FROM
            genres
        WHERE
            genre_name = 'Drama'
                AND movie_id IN (SELECT 
                    movie_id
                FROM
                    languages
                WHERE
                    language_name = 'Italian'));
                    
SELECT 
    *
FROM
    movies
WHERE
    oscars > 3
        AND movie_id IN (SELECT 
            movie_id
        FROM
            movie_stars
        WHERE
            movie_stars.star_id IN (SELECT 
                    star_id
                FROM
                    stars
                WHERE
                    star_name LIKE 'Tom Hanks'));
                    
SELECT 
    *
FROM
    movies
WHERE
    duration BETWEEN 100 AND 200
        AND movie_id IN (SELECT 
            movie_id
        FROM
            genres
        WHERE
            genre_name = 'history'
                AND movie_id IN (SELECT 
                    movie_id
                FROM
                    countries
                WHERE
                    country_name = 'USA'));
                    

