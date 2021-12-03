-- Creando base de datos llamada "Posts"
DROP DATABASE Posts;
CREATE DATABASE Posts;
--Conectando a la base de datos "Posts"
\c posts
--Creando la tabla post con sus columnas y seleccionando la columna id como su PRIMARY KEY
CREATE TABLE posts(
    id INT,
    nombre_de_usuario VARCHAR (25),
    fecha_creacion DATE,
    contenido VARCHAR (255),
    descripcion VARCHAR (255),
    PRIMARY KEY (id)
);
-- Creando los 3 posts, dos para el usuario "Pamela y uno para "Carlos"
INSERT INTO posts (id, nombre_de_usuario, fecha_creacion, contenido, descripcion) VALUES (1, 'Pamela', '2021-11-30', 'Este es el primer post de Pamela, y es post de ejemplo para el desafío', 'Esta es la descripción de este post');
INSERT INTO posts (id, nombre_de_usuario, fecha_creacion, contenido, descripcion) VALUES (2, 'Pamela', '2021-11-30', 'Este es el segundo post de Pamela, y es post de ejemplo para el desafío', 'Esta es la descripción de este post');
INSERT INTO posts (id, nombre_de_usuario, fecha_creacion, contenido, descripcion) VALUES (3, 'Carlos', '2021-11-30', 'Este es el primer post de Carlos, y es post de ejemplo para el desafío', 'Esta es la descripción de este post');

-- Alterar la tabla posts y agregar el titulo
ALTER TABLE posts ADD titulo VARCHAR(255);

-- Agregar título a las publicaciones ya ingresadas.
UPDATE posts SET titulo = 'Titulo de posts de Pamela' WHERE nombre_de_usuario = 'Pamela';
UPDATE posts SET titulo = 'Titulo de posts de Carlos' WHERE nombre_de_usuario = 'Carlos';


-- Insertar 2 post para el usuario "Pedro"
INSERT INTO posts (id, nombre_de_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES (4, 'Pedro', '2021-11-30', 'Este es el primer post de Pedro, y es post de ejemplo para el desafío', 'Esta es la descripción de este post', 'Titulo de post de Pedro');
INSERT INTO posts (id, nombre_de_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES (5, 'Pedro', '2021-11-30', 'Este es el segundo post de Pedro, y es post de ejemplo para el desafío', 'Esta es la descripción de este post', 'Titulo de post de Pedro');

-- Eliminar el post de Carlos
DELETE FROM posts WHERE nombre_de_usuario = 'Carlos';

-- Ingresar un nuevo post para el usuario "Carlos"
INSERT INTO posts (id, nombre_de_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES (6, 'Carlos', '2021-11-30', 'Este es un nuevo post de Carlos, y es post de ejemplo para el desafío', 'Esta es la descripción de este post', 'Titulo del post de Carlos');

-- Crear una nueva tabla llamada “comentarios”, con los atributos id, fecha, hora de creación y contenido, que se relacione con la tabla posts.

CREATE TABLE comentarios(
    id_comentario INT,
    fecha DATE,
    hora_de_creacion TIME,
    contenido VARCHAR (255),
    FOREIGN KEY (id_comentario) REFERENCES posts(id)
);

-- Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos"
INSERT INTO comentarios(id_comentario, fecha, hora_de_creacion, contenido) VALUES (1, '2021-12-02', '16:30:52', 'Hola, soy el comentario de Pamela');
INSERT INTO comentarios(id_comentario, fecha, hora_de_creacion, contenido) VALUES (6, '2021-12-01', '12:30:52', 'Hola, soy el primer comentario para Carlos');
INSERT INTO comentarios(id_comentario, fecha, hora_de_creacion, contenido) VALUES (6, '2021-11-29', '18:30:52', 'Hola, soy el Segundo comentario para Carlos');
INSERT INTO comentarios(id_comentario, fecha, hora_de_creacion, contenido) VALUES (6, '2021-11-21', '17:30:52', 'Hola, soy el tercer comentario para Carlos');
INSERT INTO comentarios(id_comentario, fecha, hora_de_creacion, contenido) VALUES (6, '2021-05-20', '15:30:52', 'Hola, soy el Cuarto comentario para Carlos');

-- Crear un nuevo post para "Margarita".
INSERT INTO posts (id, nombre_de_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES (7, 'Margarita', '2021-11-30', 'Este es el primer post de Margarita, y es post de ejemplo para el desafío', 'Esta es la descripción de este post', 'Titulo del post de Carlos');

-- Ingresar 5 comentarios para el post de Margarita.
INSERT INTO comentarios(id_comentario, fecha, hora_de_creacion, contenido) VALUES (7, '2021-05-20', '15:30:52', 'Hola, soy el primer comentario para Margarita');
INSERT INTO comentarios(id_comentario, fecha, hora_de_creacion, contenido) VALUES (7, '2021-05-20', '15:30:52', 'Hola, soy el Segundo comentario para Margarita');
INSERT INTO comentarios(id_comentario, fecha, hora_de_creacion, contenido) VALUES (7, '2021-05-20', '15:30:52', 'Hola, soy el Tercero comentario para Margarita');
INSERT INTO comentarios(id_comentario, fecha, hora_de_creacion, contenido) VALUES (7, '2021-05-20', '15:30:52', 'Hola, soy el Cuarto comentario para Margarita');
INSERT INTO comentarios(id_comentario, fecha, hora_de_creacion, contenido) VALUES (7, '2021-05-20', '15:30:52', 'Hola, soy el Quinto comentario para Margarita');