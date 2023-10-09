CREATE VIEW cuantasPelixCategoria as SELECT COUNT(p.title) AS cantiadad_peliculas,c.name FROM film_category f JOIN film p  
ON f.film_id = p. film_id JOIN category c ON f.category_id = c.category_id
GROUP BY c.name;

SELECT * FROM cuantasPelixCategoria