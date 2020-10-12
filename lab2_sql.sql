## 1.Select all the actors with the first name ‘Scarlett’.
SELECT * FROM sakila.actor WHERE first_name = 'Scarlett';


## 2.Select all the actors with the last name ‘Johansson’.
SELECT * FROM sakila.actor WHERE last_name = 'Johansson';


## 3.How many films (movies) are available for rent?
SELECT count(film_id) FROM sakila.film;


## 4.How many films have been rented?
SELECT count(inventory_id) FROM sakila.rental;


## 5.What is the shortest and longest rental period?
SELECT  MAX(rental_duration) AS 'longest_rental_period' , MIN(rental_duration) AS 'shortest_rental_period' FROM sakila.film;


## 6.What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT MAX(length) AS max_duration , MIN(length) AS min_duration FROM sakila.film;


## 7.What's the average movie duration?
SELECT avg(length) AS Average_movie_duration FROM sakila.film;


## 8.What's the average movie duration expressed in format (hours, minutes)?
 SELECT avg(length),CONCAT(FLOOR(avg(length) / 60),'H:',FLOOR(avg(length) % 60),'M')  AS time_format FROM film;
 

## 9.How many movies longer than 3 hours?
 SELECT count(film_id) as movie_count FROM film WHERE 
FLOOR(length/ 60) >=3;


## 10.Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT concat( (left(first_name,1)), substr(lower(first_name),2), ' ',last_name, ' - ' ,lower(email) ) AS Email FROM sakila.customer;


## 11.What's the length of the longest film title?
SELECT title, (length(title)) AS Longest_film  FROM film
order by Longest_film  desc 
limit 1;
