-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema movie_db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `movie_db` ;

-- -----------------------------------------------------
-- Schema movie_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `movie_db` DEFAULT CHARACTER SET utf8 ;
USE `movie_db` ;

-- -----------------------------------------------------
-- Table `countries`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `countries` ;

CREATE TABLE IF NOT EXISTS `countries` (
  `country_id` TINYINT UNSIGNED NOT NULL,
  `country_name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`country_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies` ;

CREATE TABLE IF NOT EXISTS `movies` (
  `movie_id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(90) NOT NULL,
  `ranking` TINYINT UNSIGNED NOT NULL,
  `rating` FLOAT UNSIGNED NOT NULL,
  `year` YEAR NOT NULL,
  `votes` MEDIUMINT UNSIGNED NOT NULL,
  `duration` SMALLINT UNSIGNED NOT NULL,
  `oscars` TINYINT UNSIGNED NULL,
  `budget` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`movie_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `producer_countries`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `producer_countries` ;

CREATE TABLE IF NOT EXISTS `producer_countries` (
  `movie_id` TINYINT UNSIGNED NOT NULL,
  `country_id` TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (`movie_id`, `country_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `languages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `languages` ;

CREATE TABLE IF NOT EXISTS `languages` (
  `movie_id` TINYINT UNSIGNED NOT NULL,
  `language_name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`movie_id`, `language_name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `directors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `directors` ;

CREATE TABLE IF NOT EXISTS `directors` (
  `director_id` TINYINT UNSIGNED NOT NULL,
  `country_id` TINYINT UNSIGNED NOT NULL,
  `director_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`director_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movie_directors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movie_directors` ;

CREATE TABLE IF NOT EXISTS `movie_directors` (
  `movie_id` TINYINT UNSIGNED NOT NULL,
  `director_id` TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (`movie_id`, `director_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `stars`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `stars` ;

CREATE TABLE IF NOT EXISTS `stars` (
  `star_id` SMALLINT UNSIGNED NOT NULL,
  `country_id` TINYINT UNSIGNED NOT NULL,
  `star_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`star_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movie_stars`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movie_stars` ;

CREATE TABLE IF NOT EXISTS `movie_stars` (
  `movie_id` TINYINT UNSIGNED NOT NULL,
  `star_id` SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (`movie_id`, `star_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `genres`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `genres` ;

CREATE TABLE IF NOT EXISTS `genres` (
  `movie_id` TINYINT UNSIGNED NOT NULL,
  `genre_name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`movie_id`, `genre_name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Data for table `countries`
-- -----------------------------------------------------
START TRANSACTION;
USE `movie_db`;
INSERT INTO `countries` (`country_id`, `country_name`) VALUES (1, 'USA');
INSERT INTO `countries` (`country_id`, `country_name`) VALUES (2, 'France');
INSERT INTO `countries` (`country_id`, `country_name`) VALUES (3, 'Germany');
INSERT INTO `countries` (`country_id`, `country_name`) VALUES (4, 'Italy');
INSERT INTO `countries` (`country_id`, `country_name`) VALUES (5, 'Spain');
INSERT INTO `countries` (`country_id`, `country_name`) VALUES (6, 'UK');
INSERT INTO `countries` (`country_id`, `country_name`) VALUES (7, 'New Zealand');
INSERT INTO `countries` (`country_id`, `country_name`) VALUES (8, 'Czech Republic');
INSERT INTO `countries` (`country_id`, `country_name`) VALUES (9, 'Canada');
INSERT INTO `countries` (`country_id`, `country_name`) VALUES (10, 'Japan');
INSERT INTO `countries` (`country_id`, `country_name`) VALUES (11, 'Australia');
INSERT INTO `countries` (`country_id`, `country_name`) VALUES (12, 'Lebanon');

COMMIT;


-- -----------------------------------------------------
-- Data for table `movies`
-- -----------------------------------------------------
START TRANSACTION;
USE `movie_db`;
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (1, 'The Shawshank Redemption', 1, 9.3, 1994, 964026, 142, 0, 25000000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (2, 'The Godfather', 2, 9.2, 1972, 686665, 175, 3, 6000000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (3, 'The Godfather: Part 2', 3, 9.0, 1974, 443397, 200, 6, 13000000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (4, 'Pulp Fiction', 4, 9.0, 1994, 749929, 154, 1, 8000000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (5, 'Il buono, il brutto, il cattivo.', 5, 9.0, 1966, 292458, 161, 1, 1200000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (6, '12 Angry Men', 6, 8.9, 1957, 236958, 96, 0, 350000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (7, 'The Dark Knight', 7, 9.0, 2008, 937710, 152, 2, 185000000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (8, 'Schindler’s List', 8, 8.9, 1993, 494277, 195, 7, 25000000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (9, 'The Lord of the Rings: The Return of the King', 9, 8.9, 2003, 688334, 201, 11, 94000000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (10, 'Fight Club', 10, 8.9, 1999, 733668, 139, 0, 63000000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (11, 'Star Wars: Episode 5 – The Empire Strikes', 11, 8.8, 1980, 472269, 124, 1, 18000000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (12, 'The Lord of the Rings: The Fellowship of the Ring', 12, 8.8, 2001, 713058, 178, 4, 93000000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (13, 'One Flew Over the Cuckoo’s Nest', 13, 8.8, 1975, 402804, 133, 5, 4400000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (14, 'Inception', 14, 8.8, 2010, 752871, 148, 4, 160000000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (15, 'Goodfellas', 15, 8.8, 1990, 420360, 146, 1, 25000000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (16, 'Star Wars', 16, 8.8, 1977, 529356, 121, 6, 11000000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (17, 'Shichinin no samurai', 17, 8.8, 1954, 149094, 207, 0, 2000000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (18, 'Forrest Gump', 18, 8.7, 1994, 634110, 142, 6, 55000000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (19, 'The Matrix', 19, 8.7, 1999, 695310, 136, 4, 63000000);
INSERT INTO `movies` (`movie_id`, `title`, `ranking`, `rating`, `year`, `votes`, `duration`, `oscars`, `budget`) VALUES (20, 'The Lord of the Rings: The Two Towers', 20, 8.7, 2002, 617954, 179, 2, 94000000);

COMMIT;


-- -----------------------------------------------------
-- Data for table `producer_countries`
-- -----------------------------------------------------
START TRANSACTION;
USE `movie_db`;
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (1, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (2, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (3, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (4, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (5, 4);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (6, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (7, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (7, 6);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (8, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (9, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (9, 7);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (10, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (10, 3);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (11, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (12, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (12, 7);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (13, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (14, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (14, 6);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (15, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (16, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (17, 10);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (18, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (19, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (19, 11);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (20, 1);
INSERT INTO `producer_countries` (`movie_id`, `country_id`) VALUES (20, 7);

COMMIT;


-- -----------------------------------------------------
-- Data for table `languages`
-- -----------------------------------------------------
START TRANSACTION;
USE `movie_db`;
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (1, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (2, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (2, 'Italian');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (2, 'Latin ');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (3, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (3, 'Italian');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (3, 'Latin');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (3, 'Spanish');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (3, 'Sicilian');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (4, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (4, 'Spanish');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (4, 'French');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (5, 'Italian');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (6, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (7, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (7, 'Mandarin');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (8, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (8, 'Hebrew');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (8, 'German');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (8, 'Polish');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (9, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (9, 'Quenya');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (9, 'Old English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (9, 'Sindarin');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (10, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (11, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (12, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (12, 'Sindarin');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (13, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (14, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (14, 'Japanese');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (14, 'French');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (15, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (15, 'Italian');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (16, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (17, 'Japanese');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (18, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (19, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (20, 'English');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (20, 'Sindarin');
INSERT INTO `languages` (`movie_id`, `language_name`) VALUES (20, 'Old English');

COMMIT;


-- -----------------------------------------------------
-- Data for table `directors`
-- -----------------------------------------------------
START TRANSACTION;
USE `movie_db`;
INSERT INTO `directors` (`director_id`, `country_id`, `director_name`) VALUES (1, 2, 'Frank Darabont');
INSERT INTO `directors` (`director_id`, `country_id`, `director_name`) VALUES (2, 1, 'Francis Ford Coppola');
INSERT INTO `directors` (`director_id`, `country_id`, `director_name`) VALUES (3, 1, 'Quentin Tarantino');
INSERT INTO `directors` (`director_id`, `country_id`, `director_name`) VALUES (4, 4, 'Sergio Leone');
INSERT INTO `directors` (`director_id`, `country_id`, `director_name`) VALUES (5, 1, 'Sidney Lumet');
INSERT INTO `directors` (`director_id`, `country_id`, `director_name`) VALUES (6, 6, 'Christopher Nolan');
INSERT INTO `directors` (`director_id`, `country_id`, `director_name`) VALUES (7, 1, 'Steven Spielberg');
INSERT INTO `directors` (`director_id`, `country_id`, `director_name`) VALUES (8, 7, 'Peter Jackson');
INSERT INTO `directors` (`director_id`, `country_id`, `director_name`) VALUES (9, 1, 'David Fincher');
INSERT INTO `directors` (`director_id`, `country_id`, `director_name`) VALUES (10, 1, 'Irvin Kershner');
INSERT INTO `directors` (`director_id`, `country_id`, `director_name`) VALUES (11, 8, 'Milos Forman');
INSERT INTO `directors` (`director_id`, `country_id`, `director_name`) VALUES (12, 1, 'Martin Scorsese');
INSERT INTO `directors` (`director_id`, `country_id`, `director_name`) VALUES (13, 1, 'George Lucas');
INSERT INTO `directors` (`director_id`, `country_id`, `director_name`) VALUES (14, 10, 'Akira Kurosawa');
INSERT INTO `directors` (`director_id`, `country_id`, `director_name`) VALUES (15, 1, 'Robert Zemeckis');
INSERT INTO `directors` (`director_id`, `country_id`, `director_name`) VALUES (16, 1, 'Andy Wachowski');
INSERT INTO `directors` (`director_id`, `country_id`, `director_name`) VALUES (17, 1, 'Lana Wachowski');

COMMIT;


-- -----------------------------------------------------
-- Data for table `movie_directors`
-- -----------------------------------------------------
START TRANSACTION;
USE `movie_db`;
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (1, 1);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (2, 2);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (3, 2);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (4, 3);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (5, 4);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (6, 5);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (7, 6);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (8, 7);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (9, 8);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (10, 9);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (11, 10);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (12, 8);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (13, 11);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (14, 6);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (15, 12);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (16, 13);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (17, 14);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (18, 15);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (19, 16);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (19, 17);
INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES (20, 8);

COMMIT;


-- -----------------------------------------------------
-- Data for table `stars`
-- -----------------------------------------------------
START TRANSACTION;
USE `movie_db`;
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (1, 1, 'Tim Robbins');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (2, 1, 'Morgan Freeman');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (3, 1, 'Bob Gunton');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (4, 1, 'Marlon Brando');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (5, 1, 'Al Pacino');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (6, 1, 'James Caan');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (7, 1, 'Robert Duvall');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (8, 1, 'Diane Keaton');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (9, 1, 'John Travolta');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (10, 1, 'Samuel L. Jackson');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (11, 3, 'Bruce Willis');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (12, 1, 'Eli Wallach');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (13, 1, 'Clint Eastwood');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (14, 1, 'Lee Van Cleef');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (15, 1, 'Martin Balsam');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (16, 1, 'John Fieldler');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (17, 1, 'Lee J. Cobb');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (18, 6, 'Christian Bale');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (19, 1, 'Heath Ledger');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (20, 1, 'Aaron Eckhart');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (21, 6, 'Liam Neeson');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (22, 6, 'Ben Kingsley');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (23, 6, 'Ralph Fiennes');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (24, 6, 'Orlando Bloom');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (25, 6, 'Ian McKellen');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (26, 1, 'Viggo Mortensen');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (27, 1, 'Edward Norton');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (28, 1, 'Brad Pitt');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (29, 6, 'Helena Bonham Carter');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (30, 1, 'Mark Hamill');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (31, 1, 'Harrison Ford');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (32, 1, 'Carrie Fisher');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (33, 1, 'Elijah Wood');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (34, 6, 'Sean Bean');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (35, 1, 'Michael Berryman');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (36, 1, 'Peter Brocco');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (37, 1, 'Louise Fletcher');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (38, 1, 'Leonardo DiCaprio');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (39, 1, 'Joseph Gordon-Levitt');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (40, 9, 'Ellen Page');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (41, 1, 'Robert De Niro');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (42, 1, 'Ray Liotta');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (43, 1, 'Joe Pesci');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (44, 10, 'Toshiro Mifune');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (45, 10, 'Takashi Shimura');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (46, 10, 'Keiko Tsushima');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (47, 1, 'Tom Hanks');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (48, 1, 'Sally Field');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (49, 1, 'Robin Wright');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (50, 12, 'Keanu Reeves');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (51, 1, 'Laurence Fishburne');
INSERT INTO `stars` (`star_id`, `country_id`, `star_name`) VALUES (52, 9, 'Carrie-Anne Moss');

COMMIT;


-- -----------------------------------------------------
-- Data for table `movie_stars`
-- -----------------------------------------------------
START TRANSACTION;
USE `movie_db`;
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (1, 1);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (1, 2);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (1, 3);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (2, 4);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (2, 5);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (2, 6);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (3, 5);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (3, 7);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (3, 8);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (4, 9);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (4, 10);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (4, 11);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (5, 12);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (5, 13);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (5, 14);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (6, 15);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (6, 16);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (6, 17);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (7, 18);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (7, 19);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (7, 20);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (8, 21);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (8, 22);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (8, 23);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (9, 24);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (9, 25);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (9, 26);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (10, 27);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (10, 28);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (10, 29);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (11, 30);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (11, 31);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (11, 32);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (12, 33);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (12, 34);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (12, 24);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (13, 35);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (13, 36);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (13, 37);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (14, 38);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (14, 39);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (14, 40);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (15, 41);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (15, 42);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (15, 43);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (16, 30);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (16, 31);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (16, 32);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (17, 44);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (17, 45);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (17, 46);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (18, 47);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (18, 48);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (18, 49);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (19, 50);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (19, 51);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (19, 52);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (20, 24);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (20, 25);
INSERT INTO `movie_stars` (`movie_id`, `star_id`) VALUES (20, 26);

COMMIT;


-- -----------------------------------------------------
-- Data for table `genres`
-- -----------------------------------------------------
START TRANSACTION;
USE `movie_db`;
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (1, 'Drama');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (1, 'Crime ');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (2, 'Drama');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (2, 'Crime ');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (3, 'Drama');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (3, 'Crime ');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (4, 'Thriller');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (4, 'Crime ');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (5, 'Adventure');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (5, 'Western');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (6, 'Drama');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (7, 'Action');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (7, 'Crime ');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (7, 'Drama');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (7, 'Thriller');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (8, 'Biography');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (8, 'Drama');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (8, 'History');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (8, 'War');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (9, 'Action');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (9, 'Adventure ');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (9, 'Fantasy');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (10, 'Drama');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (11, 'Action');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (11, 'Adventure ');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (11, 'Sci-Fi');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (12, 'Action');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (12, 'Adventure ');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (12, 'Fantasy');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (13, 'Drama');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (14, 'Action');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (14, 'Adventure ');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (14, 'Mystery');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (14, 'Thriller');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (15, 'Biography');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (15, 'Crime');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (15, 'Drama');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (15, 'Thriller');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (16, 'Action');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (16, 'Adventure');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (16, 'Fantasy ');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (16, 'Sci-Fi');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (17, 'Action');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (17, 'Drama');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (18, 'Romance');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (18, 'Drama');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (19, 'Action');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (19, 'Adventure ');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (19, 'Sci-Fi');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (20, 'Action');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (20, 'Adventure');
INSERT INTO `genres` (`movie_id`, `genre_name`) VALUES (20, 'Fantasy ');

COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
