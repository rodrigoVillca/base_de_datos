
--creando las tablas con postgresql


CREATE TABLE "user" (
 id SERIAL PRIMARY KEY,
 username TEXT UNIQUE NOT NULL,
 password TEXT NOT NULL
);
CREATE TABLE "post" (
 id SERIAL PRIMARY KEY,
 author_id INTEGER NOT NULL,
 created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 title TEXT NOT NULL,
 body TEXT NOT NULL,
 FOREIGN KEY (author_id) REFERENCES "user" (id)
);

INSERT INTO "user"(username,password)
VALUES('Rodrigo', '12345'),('Tomas', '456789'),('Andres', '789456');

SELECT * FROM "user"
 
--INSERT INTO "post"(author_id,title,body)
--VALUES('1','saludar','hola mundo'),
--('2','saluda al mundo','hola mundo'),
--('3','salud mundo','hola mundo');

SELECT * FROM "post"

--1) agregar un usuario nuevo con la contraseña de alguno de los usuarios
--ya creados(usando subquery buscando el usuario por nombre)

--INSERT INTO "user"(username, password)
--VALUES('quebin', (SELECT password FROM "user" WHERE username = 'Rodrigo'))


--3) Borrar un usuario que tenga posts, hacinedo primero un delete con
-- subquery que brorre todos los posts de ese usuario.

DELETE FROM "post" WHERE author_id = (SELECT id FROM user WHERE username = 'fulanito');
SELECT * FROM "user" WHERE username ilike 'fulanito%'; 
SELECT * FROM "user";
 