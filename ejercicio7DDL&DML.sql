CREATE TABLE Productos (
    IdProducto NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Codigo VARCHAR2(20) UNIQUE NOT NULL,
    Nombre VARCHAR2(100) NOT NULL,
    Categoria VARCHAR2(50),
    Existencia NUMBER(6),
    Precio NUMBER(10, 2)
);
CREATE INDEX idx_productos_codigo ON Productos(Codigo);
INSERT INTO Productos (Codigo, Nombre, Categoria, Existencia, Precio) 
VALUES ('PROD001', 'Laptop HP 15"', 'Tecnología', 15, 650.00);
INSERT INTO Productos (Codigo, Nombre, Categoria, Existencia, Precio) 
VALUES ('PROD002', 'Mouse Inalámbrico', 'Accesorios', 50, 15.00);
INSERT INTO Productos (Codigo, Nombre, Categoria, Existencia, Precio) 
VALUES ('PROD003', 'Teclado Mecánico', 'Accesorios', 30, 45.00);
INSERT INTO Productos (Codigo, Nombre, Categoria, Existencia, Precio) 
VALUES ('PROD004', 'Monitor 24"', 'Tecnología', 20, 180.00);
INSERT INTO Productos (Codigo, Nombre, Categoria, Existencia, Precio) 
VALUES ('PROD005', 'Impresora Multifuncional', 'Oficina', 10, 130.00);
INSERT INTO Productos (Codigo, Nombre, Categoria, Existencia, Precio) 
VALUES ('PROD006', 'Silla Ergonómica', 'Mobiliario', 8, 220.00);
INSERT INTO Productos (Codigo, Nombre, Categoria, Existencia, Precio) 
VALUES ('PROD007', 'Escritorio de Madera', 'Mobiliario', 5, 350.00);
INSERT INTO Productos (Codigo, Nombre, Categoria, Existencia, Precio) 
VALUES ('PROD008', 'Disco Duro Externo 1TB', 'Tecnología', 25, 60.00);
COMMIT;
UPDATE Productos SET Precio = 620.00 WHERE IdProducto = 1;
UPDATE Productos SET Precio = 40.00 WHERE IdProducto = 3;
UPDATE Productos SET Existencia = Existencia + 10 WHERE IdProducto = 2;
UPDATE Productos SET Existencia = 12 WHERE IdProducto = 5;
UPDATE Productos SET Existencia = Existencia - 2 WHERE IdProducto = 7;
DELETE FROM Productos WHERE IdProducto = 8;
COMMIT;

SELECT * FROM Productos;