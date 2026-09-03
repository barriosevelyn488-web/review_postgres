CREATE DATABASE campus;

CREATE TABLE estudiantes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT,
    promedio NUMERIC(3, 2),
    altura NUMERIC(3, 2),
    genero CHAR(1),
    fecha_ingreso DATE,
    hora_ingreso TIME,
    fecha_hora_registro TIMESTAMP,
    duracion_tests TIME,
    analisis_perfil TEXT,
    activo BOOLEAN DEFAULT TRUE
);

