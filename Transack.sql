BEGIN TRAN;
DECLARE @Monto DECIMAL(10,2)=25,@Costo DECIMAL(10,2);

SELECT @Costo=MB.Costo
FROM Contratos C JOIN Membresias MB ON C.IdMembresia=MB.IdMembresia
WHERE C.IdContrato=1;

IF @Monto<@Costo
BEGIN ROLLBACK; RAISERROR('Monto insuficiente',16,1); END
ELSE
BEGIN
 INSERT INTO Pagos VALUES (1,@Monto,GETDATE());
 UPDATE Contratos SET FechaFin=DATEADD(DAY,30,FechaFin) WHERE IdContrato=1;
 COMMIT;
END
