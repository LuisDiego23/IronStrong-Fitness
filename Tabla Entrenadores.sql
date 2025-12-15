
CREATE TABLE Entrenadores (
    IdEntrenador INT IDENTITY PRIMARY KEY,
    Nombre VARCHAR(100),
    Especialidad VARCHAR(100)
);

CREATE TABLE Clases (
    IdClase INT IDENTITY PRIMARY KEY,
    NombreClase VARCHAR(100),
    IdEntrenador INT,
    Horario DATETIME,
    CupoMaximo INT,
    FOREIGN KEY (IdEntrenador) REFERENCES Entrenadores(IdEntrenador)
);

CREATE TABLE Asistencias (
    IdAsistencia INT IDENTITY PRIMARY KEY,
    IdClase INT,
    IdMiembro INT,
    FechaRegistro DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (IdClase) REFERENCES Clases(IdClase),
    FOREIGN KEY (IdMiembro) REFERENCES Miembros(IdMiembro)
);