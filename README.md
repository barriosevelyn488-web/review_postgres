# Ejercicios de Consultas SQL - Tabla Estudiantes dia 1

## SELECT

1. Obtener el nombre, edad y promedio de todos los estudiantes que se encuentren activos.
2. Listar todos los estudiantes del género femenino que tengan un promedio mayor o igual a 4.5.
3. Consultar los estudiantes ingresados en el año 2024, ordenados de forma descendente por su fecha de ingreso.
4. Obtener el promedio de edad y el promedio general de calificaciones de todos los estudiantes registrados.
5. Contar cuántos estudiantes hay registrados por cada género.
6. Listar los 5 estudiantes con los promedios más altos de toda la tabla.
7. Seleccionar los estudiantes cuya duración de tests haya sido mayor a 2 horas y media.
8. Buscar a los estudiantes cuyo análisis de perfil contenga la palabra "bases de datos" o "algoritmos".
9. Calcular la altura máxima y mínima registrada entre los estudiantes hombres.
10. Mostrar el nombre, fecha e hora exacta de registro de los estudiantes que ingresaron antes de las 09:00:00 AM.

---

## UPDATE

1. Cambiar el estado a inactivo para el estudiante con id 6.
2. Incrementar en 0.2 el promedio de todos los estudiantes que tengan un promedio menor a 3.0.
3. Actualizar la hora de ingreso a 08:00:00 para todos los estudiantes que ingresaron el día 2024-02-01.
4. Modificar el análisis de perfil del estudiante con id 15 para agregar la anotación: "Graduado con honores académicos.".
5. Cambiar el género a F y actualizar la altura a 1.65 para un estudiante específico cuyo ID sea 20.
6. Desactivar a todos los estudiantes registrados antes del año 2022 que tengan un promedio inferior a 3.5.
7. Ajustar la duración de los tests a 2 horas para todos los estudiantes que actualmente tengan registrada una duración inferior a 1 hora.
8. Aumentar la edad en 1 año a todos los estudiantes que ingresaron en el año 2021.
9. Limpiar o establecer como NULL el campo analisis_perfil para los estudiantes inactivos.
10. Actualizar el promedio a 5.0 para el estudiante que tenga la fecha de registro más antigua de la base de datos.

---

## DELETE

1. Eliminar el registro del estudiante con id 34.
2. Borrar todos los estudiantes que estén inactivos.
3. Eliminar a los estudiantes cuyo promedio sea estrictamente menor a 2.5.
4. Borrar las filas de estudiantes cuya fecha de ingreso sea anterior al '2021-01-01'.
5. Eliminar a los estudiantes del género masculino que tengan una altura inferior a 1.60 m.
6. Borrar los registros de estudiantes ingresados en el año 2024 que se encuentren inactivos.
7. Eliminar a los estudiantes cuya duración de tests sea menor a 45 minutos.
8. Borrar a todos los estudiantes cuyo nombre comience con la letra 'E'.
9. Eliminar a los estudiantes activos que ingresaron antes del año 2023 y cuyo promedio sea menor a 3.5.
10. Vaciar completamente la tabla estudiantes eliminando todos sus registros.


# EJERCICIOS DE REVIEW día 2

Elabore las consultas para los siguientes enunciados:

1. Obtener el título, fecha de publicación y precio de todos los libros publicados después del año 2000, ordenados del más reciente al más antiguo.
2. Listar los nombres completos (nombre y apellido en una sola columna) y la nacionalidad de todos los autores cuya nacionalidad sea 'Española' o 'Argentina'.
3. Consultar todos los libros cuyo precio esté entre $15.00 y $20.00 inclusive.
4. Buscar todos los libros cuyo título contenga la palabra "amor" (sin importar si está en mayúsculas o minúsculas).
5. Mostrar los 5 libros más costosos de la base de datos con su título y precio.
6. Mostrar el título del libro, el precio y el nombre completo del autor al que pertenece cada libro.
7. Calcular la cantidad total de libros que ha escrito cada autor. Mostrar el nombre completo del autor y el total de libros, ordenados de mayor a menor.
8. Obtener el precio promedio, el precio mínimo y el precio máximo de los libros publicados por cada autor.
9. Listar los autores que tienen un promedio de precio en sus libros superior a $20.00.
10. Contar cuántos libros se han publicado por cada nacionalidad de los autores.



# Funciones de ventana día 3
## Ranking de mayores ventas:
Obtener el listado de todas las ventas ordenadas por monto de mayor a menor, asignando un número de posición (ranking) general a cada venta (ROW_NUMBER()).

## Porcentaje sobre el total del mes:
- Calcular qué porcentaje representa cada venta individual respecto al total general de ventas registradas en todo el mes correspondiente (SUM() OVER()).

# CTE
Obtener un reporte con el total acumulado de ventas y el promedio por transacción de cada vendedor durante todo el período registrado. A través de una CTE, calcular estas métricas y luego filtrar en la consulta principal únicamente a los vendedores cuya venta promedio por transacción sea superior a $200.00, ordenando los resultados de mayor a menor según el monto total vendido.
