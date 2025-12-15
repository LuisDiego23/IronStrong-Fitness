WITH Popularidad AS (
    SELECT IdClase, COUNT(*) Total
    FROM Asistencias
    GROUP BY IdClase
)
SELECT TOP 3 C.NombreClase, P.Total
FROM Popularidad P
JOIN Clases C ON P.IdClase = C.IdClase
ORDER BY P.Total DESC;
