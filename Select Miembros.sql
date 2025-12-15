SELECT M.Nombre
FROM Miembros M
INNER JOIN Contratos C ON M.IdMiembro = C.IdMiembro
INNER JOIN Membresias MB ON C.IdMembresia = MB.IdMembresia
WHERE MB.Nombre = 'VIP';