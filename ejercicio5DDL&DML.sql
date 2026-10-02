CREATE TABLE Pacientes (
    IdPaciente NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL,
    Apellido VARCHAR2(50) NOT NULL,
    FechaNacimiento DATE,
    Genero CHAR(1),
    Ciudad VARCHAR2(50)
);
CREATE INDEX idx_pacientes_apellido ON Pacientes(Apellido);
INSERT INTO Pacientes (Nombre, Apellido, FechaNacimiento, Genero, Ciudad) 
VALUES ('Jorge', 'Martínez', DATE '1985-04-12', 'M', 'Guatemala');
INSERT INTO Pacientes (Nombre, Apellido, FechaNacimiento, Genero, Ciudad)
VALUES ('Lucía', 'Fernández', DATE '1992-09-25', 'F', 'Antigua');
INSERT INTO Pacientes (Nombre, Apellido, FechaNacimiento, Genero, Ciudad) 
VALUES ('Pedro', 'Gómez', DATE '1978-11-03', 'M', 'Quetzaltenango');
INSERT INTO Pacientes (Nombre, Apellido, FechaNacimiento, Genero, Ciudad) 
VALUES ('Claudia', 'Ríos', DATE '2000-01-18', 'F', 'Escuintla');
INSERT INTO Pacientes (Nombre, Apellido, FechaNacimiento, Genero, Ciudad) 
VALUES ('Andrés', 'Sosa', DATE '1995-07-30', 'M', 'Guatemala');
INSERT INTO Pacientes (Nombre, Apellido, FechaNacimiento, Genero, Ciudad) 
VALUES ('Marta', 'Vásquez', DATE '1988-12-05', 'F', 'Chimaltenango');
COMMIT;
UPDATE Pacientes
SET Ciudad = 'Guatemala'
WHERE IdPaciente = 2;
UPDATE Pacientes
SET Ciudad = 'Mixco'
WHERE IdPaciente = 4;
UPDATE Pacientes
SET Nombre = 'Pedro José'
WHERE IdPaciente = 3;
DELETE FROM Pacientes
WHERE IdPaciente = 6;
COMMIT;

SELECT * FROM Pacientes;