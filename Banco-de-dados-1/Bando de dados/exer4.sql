SELECT* FROM clientes;

SELECT *
FROM facturas
ORDER BY ClienteID;

SELECT* FROM correos;

SELECT Correos.CorreoID, facturas.EnvioVia, SUM(facturas.Transporte)
FROM Correos
LEFT JOIN facturas ON correos.CorreoID=facturas.EnvioVia
GROUP BY CorreoID;

SELECT clientes.ClienteID, Contacto, Direccion
FROM clientes
LEFT JOIN facturas ON clientes.ClienteID=facturas.ClienteID
GROUP BY facturas.ClienteID
HAVING COUNT(*) =0;

SELECT *
FROM Correos;



