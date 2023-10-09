CREATE VIEW actorsqMasApareceNPelis as SELECT a.first_name, a.last_name, COUNT(f.title) AS cantidad_peliculas FROM actor a
JOIN film_actor e ON a.actor_id = e.actor_id JOIN film f
ON f.film_id = e.film_id GROUP BY a.first_name, a.last_name 
ORDER BY cantidad_peliculas DESC LIMIT 10;

SELECT * FROM actorsqMasAparecenPelis;