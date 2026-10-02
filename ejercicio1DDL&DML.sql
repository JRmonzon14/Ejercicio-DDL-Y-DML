CREATE TABLE Libros (
    IdLibro NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Titulo VARCHAR2(150) NOT NULL,
    Autor VARCHAR2(100) NOT NULL,
    AnioPublicacion NUMBER(4),
    Categoria VARCHAR2(50),
    Precio NUMBER(10, 2)
);

CREATE INDEX idx_libros_titulo ON Libros(Titulo);

INSERT INTO Libros (Titulo, Autor, AnioPublicacion, Categoria, Precio) 
VALUES ('Cien años de soledad', 'Gabriel García Márquez', 1967, 'Novela', 25.50);

INSERT INTO Libros (Titulo, Autor, AnioPublicacion, Categoria, Precio) 
VALUES ('Don Quijote de la Mancha', 'Miguel de Cervantes', 1605, 'Clásico', 30.00);

INSERT INTO Libros (Titulo, Autor, AnioPublicacion, Categoria, Precio) 
VALUES ('1984', 'George Orwell', 1949, 'Ficción', 20.00);

INSERT INTO Libros (Titulo, Autor, AnioPublicacion, Categoria, Precio) 
VALUES ('Fahrenheit 451', 'Ray Bradbury', 1953, 'Ficción', 18.75);

INSERT INTO Libros (Titulo, Autor, AnioPublicacion, Categoria, Precio) 
VALUES ('El Principito', 'Antoine de Saint-Exupéry', 1943, 'Infantil', 12.00);

COMMIT;

UPDATE Libros
SET Precio = 22.50
WHERE IdLibro = 3;

UPDATE Libros
SET Categoria = 'Literatura Clásica'
WHERE IdLibro = 1;

DELETE FROM Libros
WHERE IdLibro = 5;

COMMIT;