CREATE VIEW vw_OcupacionGimnasio AS
SELECT C.NombreClase,E.Nombre,C.CupoMaximo,COUNT(A.IdAsistencia) Inscritos
FROM Clases C
INNER JOIN Entrenadores E ON C.IdEntrenador=E.IdEntrenador
LEFT JOIN Asistencias A ON C.IdClase=A.IdClase
GROUP BY C.NombreClase,E.Nombre,C.CupoMaximo;

CREATE VIEW vw_Deudores AS
SELECT M.Nombre,C.FechaFin
FROM Contratos C
INNER JOIN Miembros M ON C.IdMiembro=M.IdMiembro
LEFT JOIN Pagos P ON C.IdContrato=P.IdContrato
WHERE C.FechaFin<GETDATE() AND P.IdPago IS NULL;
