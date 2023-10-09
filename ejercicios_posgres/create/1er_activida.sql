create VIEW cantidadPeliculasxrating as 
SELECT rating, count(title) AS cantidad_peliculas FROM film
GROUP BY rating 
ORDER BY cantidad_peliculas DESC;  

SELECT * FROM cantidadPeliculasxRating;