-- How many films are there for each of the categories in the category table. Use appropriate join to write this query.
SELECT * FROM sakila.film_category;
SELECT * FROM sakila.category;
SELECT c.category_id, c.name, COUNT(f.film_id)
FROM sakila.film_category f
JOIN sakila.category c
ON f.category_id = c.category_id
GROUP BY c.name, c.category_id
ORDER BY c.category_id ASC;

-- Display the total amount rung up by each staff member in August of 2005
SELECT * FROM sakila.payment;
SELECT * FROM sakila.staff;
SELECT s.staff_id , SUM(p.amount)
FROM sakila.payment p
JOIN sakila.staff s
ON p.amount = s.staff_id
GROUP BY s.staff_id;

-- Which actor has appeared in the most films?
SELECT actor_id, count(*) film_id
FROM sakila.film_actor
GROUP BY actor_id
ORDER BY film_id DESC;

-- Most active customer (the customer that has rented the most number of films)
SELECT * from sakila.customer;
SELECT * FROM sakila.rental;
SELECT c.first_name, c.customer_id, COUNT(r.customer_id)
FROM sakila.rental r
JOIN sakila.customer c
ON r.customer_id = c.customer_id
GROUP BY c.first_name
ORDER BY COUNT(r.customer_id) DESC;

-- Display the first and last names, as well as the address, of each staff member.
SELECT * FROM sakila.staff;
SELECT * FROM sakila.address;
SELECT s.first_name, s.last_name, s.address_id, a.address
FROM sakila.address a
JOIN sakila.staff s
ON a.address_id = s.address_id;

-- List each film and the number of actors who are listed for that film
SELECT * FROM sakila.film_actor;
SELECT * FROM sakila.film;
SELECT a.actor_id, a.film_id, f.title
FROM sakila.film f
JOIN sakila.film_actor a
ON f.film_id = a.film_id;

-- Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name.
SELECT * FROM sakila.payment;
SELECT * FROM sakila.customer;
SELECT c.customer_id, c.last_name, SUM(p.amount)
FROM sakila.customer c
JOIN sakila.payment p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id
ORDER BY c.last_name ASC;

-- List number of films per category. #there not should be done.



