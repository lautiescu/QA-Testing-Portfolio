CREATE DATABASE IF NOT EXISTS tienda_qa;
USE tienda_qa;

CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad TINYINT,
    salario DECIMAL(10,2),
    fecha_ingreso DATE,
    id_departamentos INT,
    FOREIGN KEY (id_departamentos) REFERENCES departamentos(id)
);

INSERT INTO departamentos (nombre) VALUES
("Recursos humanos"), ("TI"), ("Finanzas"), ("Ventas"), ("Marketing");

INSERT INTO empleados (nombre, edad, salario, fecha_ingreso, id_departamentos) VALUES
("Juan Sanchez", 24, 4000.50, "2026-05-01", 2),
("Penelope Cruz", 45, 1640.50, "2026-05-13", 3),
("Carlos Perez", 30, 3500.00, "2026-06-10", 2),
("Ana Gomez", 28, 3000.00, "2026-07-15", 1),
("Becario Prueba", 21, 1200.00, "2026-08-01", NULL);

-- Ejercicio QA #1
SELECT empleados.nombre, empleados.id_departamentos, departamentos.nombre AS departamento 
FROM empleados
LEFT JOIN departamentos ON empleados.id_departamentos = departamentos.id
WHERE departamentos.id IS NULL;

-- Ejercicio QA #2
SELECT departamentos.nombre AS departamento, COUNT(*) AS cantidad_empleados
FROM departamentos
INNER JOIN empleados ON departamentos.id = empleados.id_departamentos
GROUP BY id_departamentos;


-- Ejercicio QA #3
SELECT departamentos.nombre AS departamento, SUM(empleados.salario) AS suma_salarios
FROM departamentos
INNER JOIN empleados ON departamentos.id = empleados.id_departamentos
GROUP BY departamentos.nombre;


-- Ejercicio QA #4
SELECT empleados.nombre, empleados.salario, departamentos.nombre AS departamento
FROM empleados
INNER JOIN departamentos ON empleados.id_departamentos = departamentos.id
WHERE empleados.id_departamentos IN (1, 2) 
  AND empleados.salario > 3100;

-- Ejercicio QA #5
SELECT departamentos.nombre AS departamento, empleados.id_departamentos, empleados.nombre
FROM empleados
RIGHT JOIN departamentos ON departamentos.id = empleados.id_departamentos
WHERE empleados.id IS NULL;

-- Ejercicio QA #6

SELECT departamentos.nombre AS departamento, COUNT(empleados.id) AS cantidad_empleados
FROM departamentos
LEFT JOIN empleados ON departamentos.id = empleados.id_departamentos
GROUP BY departamentos.id;
