CREATE TABLE Habitaciones (
    IdHabitacion NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Numero NUMBER(5) UNIQUE NOT NULL,
    Tipo VARCHAR2(30),
    Capacidad NUMBER(2),
    PrecioNoche NUMBER(8, 2),
    Estado VARCHAR2(20) CONSTRAINT chk_estado_hotel CHECK (Estado IN ('Disponible', 'Ocupada', 'Mantenimiento'))
);
CREATE INDEX idx_habitaciones_tipo ON Habitaciones(Tipo);
INSERT INTO Habitaciones (Numero, Tipo, Capacidad, PrecioNoche, Estado) 
VALUES (101, 'Sencilla', 1, 45.00, 'Disponible');
INSERT INTO Habitaciones (Numero, Tipo, Capacidad, PrecioNoche, Estado) 
VALUES (102, 'Sencilla', 1, 45.00, 'Ocupada');
INSERT INTO Habitaciones (Numero, Tipo, Capacidad, PrecioNoche, Estado) 
VALUES (201, 'Doble', 2, 75.00, 'Disponible');
INSERT INTO Habitaciones (Numero, Tipo, Capacidad, PrecioNoche, Estado) 
VALUES (202, 'Doble', 2, 75.00, 'Disponible');
INSERT INTO Habitaciones (Numero, Tipo, Capacidad, PrecioNoche, Estado) 
VALUES (301, 'Suite', 4, 150.00, 'Ocupada');
INSERT INTO Habitaciones (Numero, Tipo, Capacidad, PrecioNoche, Estado) 
VALUES (302, 'Suite', 4, 150.00, 'Mantenimiento');
INSERT INTO Habitaciones (Numero, Tipo, Capacidad, PrecioNoche, Estado) 
VALUES (401, 'Penthouse', 6, 300.00, 'Disponible');
INSERT INTO Habitaciones (Numero, Tipo, Capacidad, PrecioNoche, Estado) 
VALUES (402, 'Doble', 2, 80.00, 'Ocupada');
COMMIT;
UPDATE Habitaciones SET Estado = 'Ocupada' WHERE IdHabitacion = 1;
UPDATE Habitaciones SET Estado = 'Disponible' WHERE IdHabitacion = 5;
UPDATE Habitaciones SET Estado = 'Mantenimiento' WHERE IdHabitacion = 4;
UPDATE Habitaciones SET PrecioNoche = 50.00 WHERE IdHabitacion = 2;
UPDATE Habitaciones SET PrecioNoche = 160.00 WHERE IdHabitacion = 6;
DELETE FROM Habitaciones WHERE IdHabitacion = 8;
COMMIT;

SELECT * FROM Habitaciones;