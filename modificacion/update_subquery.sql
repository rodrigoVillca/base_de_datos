--2) actualizar todos los posts de un usuario (seleccionado con subquery
--por nombre) y poner el cuerpo del post en texto vacio("")

UPDATE post SET body = ""
WHERE author_id =(SELECT id FROM user WHERE username = "Ivan")  