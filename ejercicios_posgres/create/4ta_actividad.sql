CREATE VIEW pelisEjemplaresCadaLocal as SELECT DISTINCT COUNT(f.title) AS Cantidad_Peliculas, s.manager_staff_id AS Locales FROM store s JOIN inventory i
ON s.store_id = i.store_id JOIN film f ON i.film_id = f.film_id 
GROUP BY Locales;

SELECT * FROM pelisEjemplaresCadaLocal; 