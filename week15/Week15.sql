insert into movies(movie_id, title, ranking, rating, year,votes, duration, oscars, budget)
select distinct movie_id, title, ranking, rating, year,votes, duration, oscars, budget from denormalized;
select * from movies;

insert into languages(movie_id, language_name)
select distinct movie_id, language_name from denormalized;
select * from languages;

insert into genres(movie_id, genre_name)
select distinct movie_id, genre_name from denormalized;
select * from genres;

insert into countries(country_name, country_id)
select distinct producer_country_name, producer_country_id from denormalized
union
select distinct director_country_name, director_country_id from denormalized
union
select distinct star_country_name, star_country_id from denormalized;
select * from countries;

insert into producer_countries(movie_id, country_id)
select distinct movie_id, producer_country_id from denormalized;
select * from producer_countries;

insert into directors(director_id, country_id, director_name)
select distinct director_id, director_country_id, director_name from denormalized;
select * from directors;

insert into movie_directors(movie_id, director_id)
select distinct movie_id, director_id from denormalized;
select * from movie_directors;

insert into stars(star_id, country_id, star_name)
select distinct star_id, star_country_id, star_name from denormalized;
select * from stars;

insert into movie_stars(movie_id, star_id)
select distinct movie_id, star_id from denormalized;
select * from movie_stars;
