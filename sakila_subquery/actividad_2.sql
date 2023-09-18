--2)Borrar los lenguajes que no aparecen en ninguna película.
DELETE FROM language WHERE language_id NOT IN (SELECT DISTINCT language_id FROM film);