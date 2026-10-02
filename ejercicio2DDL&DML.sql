CREATE TABLE Empleados (
    IdEmpleado NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL,
    Apellido VARCHAR2(50) NOT NULL,
    Puesto VARCHAR2(50),
    Salario NUMBER(10, 2),
    Departamento VARCHAR2(50)
);
CREATE INDEX idx_empleados_apellido ON Empleados(Apellido);
INSERT INTO Empleados (Nombre, Apellido, Puesto, Salario, Departamento) 
VALUES ('Carlos', 'Mendoza', 'Desarrollador', 3500.00, 'T.I.');
INSERT INTO Empleados (Nombre, Apellido, Puesto, Salario, Departamento) 
VALUES ('Ana', 'Gómez', 'Analista', 2800.00, 'Finanzas');
INSERT INTO Empleados (Nombre, Apellido, Puesto, Salario, Departamento) 
VALUES ('Luis', 'Torres', 'Gerente', 5000.00, 'Ventas');
INSERT INTO Empleados (Nombre, Apellido, Puesto, Salario, Departamento) 
VALUES ('Sofía', 'Ramírez', 'Diseñadora', 2600.00, 'Marketing');
INSERT INTO Empleados (Nombre, Apellido, Puesto, Salario, Departamento) 
VALUES ('Diego', 'López', 'Soporte', 2200.00, 'T.I.');
INSERT INTO Empleados (Nombre, Apellido, Puesto, Salario, Departamento) 
VALUES ('María', 'Hernández', 'Reclutadora', 2400.00, 'Recursos Humanos');
COMMIT;
UPDATE Empleados
SET Salario = 3800.00
WHERE IdEmpleado = 1;
UPDATE Empleados
SET Departamento = 'Dirección General'
WHERE IdEmpleado = 3;
DELETE FROM Empleados
WHERE IdEmpleado = 5;
COMMIT;

SELECT * FROM Empleados;