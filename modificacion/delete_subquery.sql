--3) Borrar un usuario que tenga posts, hacinedo primero un delete con
-- subquery que brorre todos los posts de ese usuario.

DELETE FROM post WHERE author_id = (SELECT id FROM user WHERE username = "Nahuel");
DELETE FROM user WHERE username = "Nahuel"; 
 