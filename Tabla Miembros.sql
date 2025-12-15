CREATE TABLE Miembros (
    IdMiembro INT IDENTITY PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    FechaNacimiento DATE NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Estado VARCHAR(10) CHECK (Estado IN ('Activo','Inactivo'))
);

CREATE TABLE Membresias (
    IdMembresia INT IDENTITY PRIMARY KEY,
    Nombre VARCHAR(50),
    Costo DECIMAL(10,2),
    DuracionDias INT
);

CREATE TABLE Contratos (
    IdContrato INT IDENTITY PRIMARY KEY,
    IdMiembro INT,
    IdMembresia INT,
    FechaInicio DATE,
    FechaFin DATE,
    FOREIGN KEY (IdMiembro) REFERENCES Miembros(IdMiembro),
    FOREIGN KEY (IdMembresia) REFERENCES Membresias(IdMembresia)
);
