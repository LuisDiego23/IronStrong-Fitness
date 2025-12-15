SELECT C.NombreClase, E.Nombre, C.Horario
FROM Clases C
INNER JOIN Entrenadores E ON C.IdEntrenador = E.IdEntrenador
ORDER BY C.Horario;

SELECT M.Nombre
FROM Miembros M
LEFT JOIN Asistencias A ON M.IdMiembro = A.IdMiembro
WHERE A.IdMiembro IS NULL;