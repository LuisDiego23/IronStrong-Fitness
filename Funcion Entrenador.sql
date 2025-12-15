CREATE FUNCTION fn_EdadPromedioClase (@IdClase INT)
RETURNS INT
AS BEGIN
 DECLARE @Edad INT;
 SELECT @Edad=AVG(DATEDIFF(YEAR,M.FechaNacimiento,GETDATE()))
 FROM Asistencias A JOIN Miembros M ON A.IdMiembro=M.IdMiembro
 WHERE A.IdClase=@IdClase;
 RETURN @Edad;
END;
