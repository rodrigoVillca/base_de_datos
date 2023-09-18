--1)Insertar tres ciudades de argentina a elección en un solo insert 
INSERT INTO city(city, country_id) 
VALUES("Chaco",(SELECT country_id FROM country WHERE country like "Argentina%")),
      ("Tierra Del Fuego",(SELECT country_id FROM country WHERE country like "Argentina%")),("Tucuman",(SELECT country_id FROM country WHERE country like "Argentina%"));
