--1) agregar un usuario nuevo con la contraseña de alguno de los usuarios
--ya creados(usando subquery buscando el usuario por nombre)

INSERT INTO user(username, password)
VALUES("quebin", (SELECT password FROM user WHERE username = "Ivan"))