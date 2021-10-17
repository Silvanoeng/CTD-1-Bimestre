SELECT FacturaID, FechaFactura
FROM facturas
ORDER BY FechaFactura;

SELECT FacturaID, PaisEnvio, EnvioVia
FROM facturas
WHERE EnvioVia<>3
AND PaisEnvio="USA"
ORDER BY EnvioVia;

SELECT FacturaID, ClienteID
FROM facturas
WHERE ClienteID="Gourl";

SELECT FacturaID, ClienteID, EmpleadoID
FROM facturas
WHERE EmpleadoID BETWEEN 2 AND 9
AND EmpleadoID <> 4
AND EmpleadoID <> 6
AND EmpleadoID <> 7
ORDER BY EmpleadoID;

SELECT SUM(Transporte)
FROM facturas;

SELECT DATE_FORMAT(`FechaFactura`, "%D %M %Y")
FROM facturas;

SELECT*
FROM facturas;