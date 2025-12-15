
CREATE TRIGGER trg_ValidarMembresia
ON Asistencias INSTEAD OF INSERT
AS
BEGIN
 IF EXISTS (
  SELECT 1 FROM inserted I
  JOIN Contratos C ON I.IdMiembro=C.IdMiembro
  WHERE C.FechaFin<GETDATE()
 )
 BEGIN RAISERROR('Membresía vencida',16,1); RETURN; END

 INSERT INTO Asistencias (IdClase,IdMiembro,FechaRegistro)
 SELECT IdClase,IdMiembro,GETDATE() FROM inserted;
END;
