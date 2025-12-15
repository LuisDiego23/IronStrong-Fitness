
INSERT INTO Entrenadores (Nombre, Especialidad) VALUES
('Carlos Pérez','CrossFit'),
('Ana Gómez','Yoga'),
('Luis Mora','Pesas'),
('María Rojas','Cardio'),
('David Ruiz','Funcional'),
('Jorge Ramírez','Spinning'),
('Andrea Solís','Pilates'),
('Fernando Quesada','Boxeo'),
('Paola Méndez','Zumba'),
('Mauricio León','HIIT');


INSERT INTO Clases (NombreClase, IdEntrenador, Horario, CupoMaximo) VALUES
('CrossFit Básico',1,'2025-06-01 08:00',15),
('Yoga Mañana',2,'2025-06-01 09:00',20),
('Pesas Intermedio',3,'2025-06-01 10:00',15),
('Cardio Express',4,'2025-06-01 11:00',20),
('Funcional',5,'2025-06-01 12:00',15),
('Spinning',6,'2025-06-02 08:00',20),
('Pilates',7,'2025-06-02 09:00',15),
('Boxeo',8,'2025-06-02 10:00',15),
('Zumba',9,'2025-06-02 11:00',20),
('HIIT',10,'2025-06-02 12:00',15),
('CrossFit Avanzado',1,'2025-06-03 08:00',10),
('Yoga Tarde',2,'2025-06-03 17:00',20),
('Pesas Avanzado',3,'2025-06-03 18:00',15),
('Cardio Nocturno',4,'2025-06-03 19:00',20),
('Funcional Pro',5,'2025-06-03 20:00',10);


INSERT INTO Asistencias (IdClase, IdMiembro) VALUES
(1,1),(1,2),(1,3),(1,4),(1,5),
(2,6),(2,7),(2,8),(2,9),(2,10),
(3,11),(3,12),(3,13),(3,14),(3,15),
(4,16),(4,17),(4,18),(4,19),(4,20),
(5,1),(6,2),(7,3),(8,4),(9,5),
(10,6),(11,7),(12,8),(13,9),(14,10);