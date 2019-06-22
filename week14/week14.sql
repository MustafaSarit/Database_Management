SHOW VARIABLES LIKE "secure_file_priv";

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\movies.csv' 
into table movies fields terminated by ","  enclosed by '"';
select * from movies;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\countries.csv' 
into table countries fields terminated by "," ;
select * from countries;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\stars.csv' 
into table stars fields terminated by "," ;
select * from stars;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\movie_stars.csv' 
into table movie_stars fields terminated by "," ;
select * from movie_stars;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\directors.csv' 
into table directors fields terminated by "," ;
select * from directors;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\movie_directors.csv' 
into table movie_directors fields terminated by "," ;
select * from movie_directors;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\genres.csv' 
into table genres fields terminated by "," ;
select * from genres;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\languages.csv' 
into table languages fields terminated by "," ;
select * from languages;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\producer_countries.csv' 
into table producer_countries fields terminated by "," ;
select * from producer_countries;
