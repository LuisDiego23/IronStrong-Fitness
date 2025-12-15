

CREATE PROCEDURE sp_ReporteVentasEntrenador
@IdEntrenador INT
AS
BEGIN
 SELECT E.Nombre, SUM(P.Monto) TotalGenerado
 FROM Pagos P
 JOIN Contratos C ON P.IdContrato=C.IdContrato
 JOIN Clases CL ON CL.IdEntrenador=@IdEntrenador
 JOIN Entrenadores E ON E.IdEntrenador=@IdEntrenador
 GROUP BY E.Nombre;
END;
