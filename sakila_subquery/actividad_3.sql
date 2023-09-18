-- 3)Borrar todas las ciudades que no tienen direcciones y luego todos los países que no tienen ciudades.

---delete FROM city WHERE city_id NOT IN (SELECT city_id FROM address);

SELECT * FROM country WHERE country_id NOT IN(SELECT address_id FROM address) 