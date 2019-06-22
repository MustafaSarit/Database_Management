SELECT 
    AVG(budget)
FROM
    movies
WHERE
    movie_id IN (SELECT 
            movie_id
        FROM
            movie_directors
        WHERE
            director_id IN (SELECT 
                    director_id
                FROM
                    directors
                WHERE
                    director_name = 'Peter Jackson'));

SELECT 
    *
FROM
    movies
WHERE
    budget IN (SELECT 
            MIN(budget)
        FROM
            movies
        WHERE
            movie_id IN (SELECT 
                    movie_id
                FROM
                    movie_directors
                WHERE
                    director_id IN (SELECT 
                            director_id
                        FROM
                            directors
                        WHERE
                            director_name = 'Francis Ford Coppola')));

                            
SELECT 
    *
FROM
    movies
WHERE
    votes IN (SELECT 
            MAX(votes)
        FROM
            movies
        WHERE
            movie_id IN (SELECT 
                    movie_id
                FROM
                    countries
                WHERE
                    country_name = 'USA'));