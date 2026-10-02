CREATE TABLE Vehiculos (
    IdVehiculo NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Marca VARCHAR2(50) NOT NULL,
    Modelo VARCHAR2(50) NOT NULL,
    Anio NUMBER(4),
    Color VARCHAR2(30),
    Precio NUMBER(12, 2)
);
CREATE INDEX idx_vehiculos_marca ON Vehiculos(Marca);
INSERT INTO Vehiculos (Marca, Modelo, Anio, Color, Precio) 
VALUES ('Toyota', 'Corolla', 2022, 'Gris', 22000.00);
INSERT INTO Vehiculos (Marca, Modelo, Anio, Color, Precio) 
VALUES ('Honda', 'Civic', 2023, 'Negro', 25000.00);
INSERT INTO Vehiculos (Marca, Modelo, Anio, Color, Precio) 
VALUES ('Ford', 'Mustang', 2021, 'Rojo', 42000.00);
INSERT INTO Vehiculos (Marca, Modelo, Anio, Color, Precio) 
VALUES ('Chevrolet', 'Onix', 2020, 'Blanco', 15000.00);
INSERT INTO Vehiculos (Marca, Modelo, Anio, Color, Precio) 
VALUES ('Nissan', 'Sentra', 2022, 'Azul', 21000.00);
INSERT INTO Vehiculos (Marca, Modelo, Anio, Color, Precio) 
VALUES ('Hyundai', 'Tucson', 2023, 'Plata', 28000.00);
INSERT INTO Vehiculos (Marca, Modelo, Anio, Color, Precio) 
VALUES ('Mazda', 'CX-5', 2021, 'Rojo', 29500.00);
COMMIT;
UPDATE Vehiculos
SET Precio = 21000.00
WHERE IdVehiculo = 1;
UPDATE Vehiculos
SET Precio = 40000.00
WHERE IdVehiculo = 3;
UPDATE Vehiculos
SET Color = 'Negro Metalizado'
WHERE IdVehiculo = 5;
DELETE FROM Vehiculos
WHERE IdVehiculo = 4;
COMMIT;

SELECT * FROM Vehiculos;