CREATE TABLE Cursos (
    IdCurso NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    NombreCurso VARCHAR2(100) NOT NULL,
    Carrera VARCHAR2(100),
    Creditos NUMBER(2),
    Catedratico VARCHAR2(100),
    Horario VARCHAR2(50)
);
CREATE INDEX idx_cursos_nombre ON Cursos(NombreCurso);
INSERT INTO Cursos (NombreCurso, Carrera, Creditos, Catedratico, Horario) 
VALUES ('Bases de Datos I', 'Ingeniería en Sistemas', 5, 'Ing. Juan Pérez', '7:00 - 9:00');
INSERT INTO Cursos (NombreCurso, Carrera, Creditos, Catedratico, Horario) 
VALUES ('Programación I', 'Ingeniería en Sistemas', 4, 'Lic. Martha Ruiz', '9:00 - 11:00');
INSERT INTO Cursos (NombreCurso, Carrera, Creditos, Catedratico, Horario) 
VALUES ('Cálculo I', 'Ingeniería Civil', 5, 'Dr. Roberto Silva', '11:00 - 13:00');
INSERT INTO Cursos (NombreCurso, Carrera, Creditos, Catedratico, Horario) 
VALUES ('Contabilidad General', 'Administración', 3, 'Licda. Elena Morales', '14:00 - 16:00');
INSERT INTO Cursos (NombreCurso, Carrera, Creditos, Catedratico, Horario) 
VALUES ('Física I', 'Ingeniería Industrial', 4, 'Ing. Mario Estrada', '16:00 - 18:00');
INSERT INTO Cursos (NombreCurso, Carrera, Creditos, Catedratico, Horario) 
VALUES ('Estadística I', 'Auditoría', 3, 'Dra. Carmen Castillo', '18:00 - 20:00');
COMMIT;
UPDATE Cursos
SET Creditos = 6
WHERE IdCurso = 1;
UPDATE Cursos
SET Catedratico = 'Ing. Fernando Aguilar'
WHERE IdCurso = 2;
DELETE FROM Cursos
WHERE IdCurso = 6;
COMMIT;

SELECT * FROM cursos;