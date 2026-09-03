
--Obtener el nombre, edad y promedio de todos los estudiantes que se encuentren activos.

SELECT nombre, edad, promedio
FROM estudiantes
WHERE activo = TRUE;

-- Listar todos los estudiantes del género femenino que tengan un promedio mayor o igual a 4.5.
SELECT *
FROM estudiantes
WHERE genero = 'F'
  AND promedio >= 4.5;

--Consultar los estudiantes ingresados en el año 2024, ordenados de forma descendente por su fecha de ingreso

SELECT nombre,fecha_ingreso
FROM estudiantes
WHERE fecha_ingreso >= '2024-01-01' AND fecha_ingreso <= '2024-12-31'
ORDER BY fecha_ingreso DESC;

--Obtener el promedio de edad y el promedio general de calificaciones de todos los estudiantes registrados.

SELECT 
    AVG(edad) AS promedio_edad,
    AVG(promedio) AS promedio_general
FROM estudiantes;

--Contar cuántos estudiantes hay registrados por cada género.

SELECT 
    genero, 
    COUNT(*) AS total_estudiantes
FROM estudiantes
GROUP BY genero; -- agrupa todas las filas de la tabla segun el valor que tengan en la columna genero


--Listar los 5 estudiantes con los promedios más altos de toda la tabla.
SELECT nombre, promedio
FROM estudiantes
ORDER BY promedio DESC
LIMIT 5;

--Seleccionar los estudiantes cuya duración de tests haya sido mayor a 2 horas y media.
SELECT nombre, duracion_tests
FROM estudiantes
WHERE duracion_tests > '2:30:00'
ORDER BY duracion_tests DESC;

-- Buscar a los estudiantes cuyo análisis de perfil contenga la palabra "bases de datos" o "algoritmos".
SELECT nombre, analisis_perfil
FROM estudiantes
WHERE analisis_perfil ILIKE '%bases de datos%' 
   OR analisis_perfil ILIKE '%algoritmos%'
ORDER BY analisis_perfil DESC;


--Calcular la altura máxima y mínima registrada entre los estudiantes hombres.
SELECT 
    MAX(altura) AS altura_maxima,
    MIN(altura) AS altura_minima
FROM estudiantes
WHERE genero = 'M';



--Mostrar el nombre, fecha e hora exacta de registro de los estudiantes que ingresaron antes de las 09:00:00 AM.

SELECT nombre, fecha_hora_registro
FROM estudiantes
WHERE CAST(fecha_hora_registro AS TIME) < '09:00:00'
ORDER BY fecha_hora_duración DESC;
