CREATE PROCEDURE sp_InscribirClase
@IdMiembro INT,@IdClase INT
AS
BEGIN
 IF (SELECT COUNT(*) FROM Asistencias WHERE IdClase=@IdClase) <
    (SELECT CupoMaximo FROM Clases WHERE IdClase=@IdClase)
 INSERT INTO Asistencias (IdClase,IdMiembro) VALUES (@IdClase,@IdMiembro)
 ELSE RAISERROR('Cupo lleno',16,1);
END;
GO