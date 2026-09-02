## DELETE

1. Eliminar el registro del estudiante con id 34.
DELETE FROM estudiantes
WHERE id = 34
RETURNING id, nombre;


2. Borrar todos los estudiantes que estén inactivos.
DELETE FROM estudiantes
WHERE activo = FALSE
RETURNING id, nombre, activo;


3. Eliminar a los estudiantes cuyo promedio sea estrictamente menor a 2.5.
DELETE FROM estudiantes
WHERE promedio < 2.5
RETURNING id nombre, promedio;


4. Borrar las filas de estudiantes cuya fecha de ingreso sea anterior al '2021-01-01'.
DELETE FROM estudiantes
WHERE fecha_ingreso < '2021-01-01'
RETURNING id, nombre, fecha_ingreso;


5. Eliminar a los estudiantes del género masculino que tengan una altura inferior a 1.60 m.
DELETE FROM estudiantes
WHERE genero = 'M' AND altura < 1.60
RETURNING id, nombre, genero, altura;


6. Borrar los registros de estudiantes ingresados en el año 2024 que se encuentren inactivos.
DELETE FROM estudiantes
WHERE EXTRACT(YEAR FROM fecha_ingreso) = 2024
AND activo = FALSE
RETURNING id, nombre, fecha_ingreso, activo;


7. Eliminar a los estudiantes cuya duración de tests sea menor a 45 minutos.
DELETE FROM estudiantes
WHERE duracion_tests < '00:45:00'
RETURNING id, nombre, duracion_tests;


8. Borrar a todos los estudiantes cuyo nombre comience con la letra 'E'.
DELETE FROM estudiantes
WHERE nombre ILIKE 'E%'
RETURNING id, nombre;


9. Eliminar a los estudiantes activos que ingresaron antes del año 2023 y cuyo promedio sea menor a 3.5.
DELETE FROM estudiantes
WHERE activo = TRUE
  AND EXTRACT(YEAR FROM fecha_ingreso) < 2023
  AND promedio < 3.5
RETURNING id, nombre, activo, fecha_ingreso, promedio;

10. Vaciar completamente la tabla estudiantes eliminando todos sus registros.
TRUNCATE TABLE estudiantes RESTART IDENTITY;