CREATE VIEW TodoDeLosEjemSinDvolver AS SELECT f.title,a.address,c.city,p.country FROM address a JOIN city c ON a.city_id = c.city_id 
JOIN country p ON c.country_id = p.country_id JOIN store s ON a.address_id = s.address_id JOIN inventory i 
ON s.store_id = i.store_id JOIN film f ON f.film_id = i.film_id JOIN rental r ON r.inventory_id = i.inventory_id WHERE return_date IS NULL
ORDER BY s.store_id

SELECT * FROM TodoDeLosEjemSinDvolver;