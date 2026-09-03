## UPDATE

1. Cambiar el estado a inactivo para el estudiante con id 6.
UPDATE estudiantes
SET activo = FALSE
WHERE id = 6
RETURNING id, nombre, activo;



2. Incrementar en 0.2 el promedio de todos los estudiantes que tengan un promedio menor a 3.0.
UPDATE estudiantes
SET promedio = promedio + 0.2
WHERE promedio < 3.0
RETURNING id, nombre, promedio;



3. Actualizar la hora de ingreso a 08:00:00 para todos los estudiantes que ingresaron el día 2024-02-01.
UPDATE estudiantes
SET hora_ingreso = '08:00:00'
WHERE fecha_ingreso = '2024-02-01'
RETURNING id, nombre, hora_ingreso, fecha_ingreso;




4. Modificar el análisis de perfil del estudiante con id 15 para agregar la anotación: "Graduado con honores académicos.".
UPDATE estudiantes 
SET analisis_perfil = 'Graduado con honores académicos.'
WHERE id = 15
RETURNING id, nombre, analisis_perfil;


5. Cambiar el género a F y actualizar la altura a 1.65 para un estudiante específico cuyo ID sea 20.
UPDATE estudiantes
SET genero = 'F'
WHERE id = 20
RETURNING id, nombre, genero;



6. Desactivar a todos los estudiantes registrados antes del año 2022 que tengan un promedio inferior a 3.5.
UPDATE estudiantes
SET activo = FALSE
WHERE EXTRACT(YEAR FROM fecha_hora_registro) < 2022
AND promedio < 3.5
RETURNING id, nombre, fecha_hora_registro, activo, promedio;


7. Ajustar la duración de los tests a 2 horas para todos los estudiantes que actualmente tengan registrada una duración inferior a 1 hora.
UPDATE estudiantes
SET duracion_tests = '02:15:00'
WHERE duracion_tests < '01:00:00'
RETURNING id, nombre, duracion_tests;


8. Aumentar la edad en 1 año a todos los estudiantes que ingresaron en el año 2021.
UPDATE estudiantes
SET edad = edad + 2
WHERE fecha_ingreso BETWEEN '2021-01-01' AND '2021-12-31'
RETURNING id, nombre, fecha_ingreso, edad;


9. Limpiar o establecer como NULL el campo analisis_perfil para los estudiantes inactivos.
UPDATE estudiantes
SET analisis_perfil = NULL
WHERE activo = FALSE
RETURNING id, nombre, analisis_perfil;


10. Actualizar el promedio a 5.0 para el estudiante que tenga la fecha de registro más antigua de la base de datos.
UPDATE estudiantes
SET promedio = 5.0
WHERE id = (
    SELECT id 
    FROM estudiantes 
    ORDER BY fecha_hora_registro ASC 
    LIMIT 1
)
RETURNING id, nombre, promedio, fecha_hora_registro;
---