

CREATE TABLE Pagos (
    IdPago INT IDENTITY PRIMARY KEY,
    IdContrato INT,
    Monto DECIMAL(10,2),
    FechaPago DATE,
    FOREIGN KEY (IdContrato) REFERENCES Contratos(IdContrato)
);

CREATE TABLE LogPagosEliminados (
    IdPago INT,
    Monto DECIMAL(10,2),
    Usuario VARCHAR(100),
    Fecha DATETIME
);
GO