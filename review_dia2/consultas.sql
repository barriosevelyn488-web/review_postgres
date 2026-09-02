# EJERCICIOS DE REVIEW día 2

Elabore las consultas para los siguientes enunciados:

1. Obtener el título, fecha de publicación y precio de todos los libros publicados después del año 2000, ordenados del más reciente al más antiguo.
SELECT titulo, fecha_publicacion, precio
FROM libros
WHERE fecha_publicacion > '2000-01-01'
ORDER BY fecha_publicacion DESC;


2. Listar los nombres completos (nombre y apellido en una sola columna) y la nacionalidad de todos los autores cuya nacionalidad sea 'Española' o 'Argentina'.

SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo, nacionalidad
FROM autores
WHERE nacionalidad IN ('Española', 'Argentina');


3. Consultar todos los libros cuyo precio esté entre $15.00 y $20.00 inclusive.
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo, nacionalidad
FROM autores
WHERE nacionalidad IN ('Española', 'Argentina');


4. Buscar todos los libros cuyo título contenga la palabra "amor" (sin importar si está en mayúsculas o minúsculas).
SELECT *
FROM libros
WHERE LOWER(titulo) LIKE '%amor%';


5. Mostrar los 5 libros más costosos de la base de datos con su título y precio.
SELECT titulo, precio
FROM libros
ORDER BY precio DESC
LIMIT 5;



6. Mostrar el título del libro, el precio y el nombre completo del autor al que pertenece cada libro.
SELECT libros.titulo, libros.precio, CONCAT(autores.nombre, ' ', autores.apellido) AS nombre_completo
FROM libros
JOIN autores ON libros.autor_id = autores.id;


7. Calcular la cantidad total de libros que ha escrito cada autor. Mostrar el nombre completo del autor y el total de libros, ordenados de mayor a menor.
SELECT CONCAT(autores.nombre, ' ', autores.apellido) AS nombre_completo, COUNT(libros.autor_id) AS total_libros
FROM autores
JOIN libros ON autores.id = libros.autor_id
GROUP BY autores.id
ORDER BY total_libros DESC;


8. Obtener el precio promedio, el precio mínimo y el precio máximo de los libros publicados por cada autor.
SELECT CONCAT(autores.nombre, ' ', autores.apellido) AS nombre_completo, COUNT(libros.autor_id) AS total_libros
FROM autores
JOIN libros ON autores.id = libros.autor_id
GROUP BY autores.id
ORDER BY total_libros DESC;


9. Listar los autores que tienen un promedio de precio en sus libros superior a $20.00.
SELECT CONCAT(autores.nombre, ' ', autores.apellido) AS nombre_completo, COUNT(libros.autor_id) AS total_libros
FROM autores
JOIN libros ON autores.id = libros.autor_id
GROUP BY autores.id
ORDER BY total_libros DESC;


10. Contar cuántos libros se han publicado por cada nacionalidad de los autores.
SELECT autores.nacionalidad, COUNT(libros.autor_id) AS cantidad_libros
FROM autores
JOIN libros ON autores.id = libros.autor_id
GROUP BY autores.nacionalidad;