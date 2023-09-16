USE sakila;
-- Show all tables
SHOW TABLES;
-- Retrive all the data from the tables: actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- Retrive the following columns from their respective tables:
-- Titles of all films from the film table
SELECT title FROM film;
-- list of languages used in films, with the column aliased as language from the language table
SELECT name AS language FROM language;

-- List of first names of all employees from the staff table:
SELECT first_name FROM staff;

-- Retrieve unique release years:
SELECT DISTINCT release_year FROM film;

-- Determine the number of stores:

SELECT COUNT(*) FROM store;

-- Determine the number of employees:
SELECT COUNT(*) FROM staff;

-- Determine how many films are available for rent and how many have been rented:
SELECT (SELECT COUNT(*) FROM inventory) AS available_films,
(SELECT COUNT(*) FROM rental) AS rented_films;

-- Determine the number of distinct last names of the actors in the database:
SELECT COUNT(DISTINCT last_name) FROM actor;

-- Retrieve the 10 longest films:
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

-- Retrieve all actors with the first name "SCARLETT":
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

-- Retrieve all movies that have "ARMAGEDDON" in their title and a duration longer than 100 minutes:
SELECT title, length FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

--  Determine the number of films that include Behind the Scenes content:
SELECT COUNT(*) FROM film
WHERE special_features LIKE '%Behind the Scenes%';