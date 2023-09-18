-- 5) Borrar al actor Matthew Johansson, pensar qué cosa habría que borrar primero para poder borrarlo.
 --DELETE FROM film_actor WHERE actor_id IN (SELECT actor_id FROM actor WHERE first_name LIKE "%matthew%" AND  last_name LIKE "%johansson%");
 
 DELETE FROM actor WHERE actor_id in (SELECT actor_id FROM actor WHERE first_name LIKE "%matthew%" AND  last_name LIKE "%johansson%");
