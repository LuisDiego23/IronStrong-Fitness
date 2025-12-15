






SELECT Email FROM Miembros
UNION
SELECT Email FROM Entrenadores;

SELECT IdMiembro FROM Contratos
WHERE FechaFin >= GETDATE()
INTERSECT
SELECT IdMiembro FROM Asistencias;

SELECT IdEntrenador FROM Entrenadores
EXCEPT
SELECT IdEntrenador FROM Clases;
