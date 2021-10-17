SELECT* FROM clientes;

SELECT* FROM facturas;

SELECT* FROM empleados;

SELECT DISTINCT
 CONCAT(LEFT(Contacto, INSTR(Contacto, '')+1),'') AS Contacto,
 UPPER(Titilo) AS Titulo
FROM facturas f
INNER JOIN clientes c
ON f.ClienteID = 
WHERE clientes.ClienteID = facturas.ClienteID
AND facturas.FechaFactura LIKE "1996%";

SELECT clientes.ClienteID AS id, clientes.Contacto, facturas.FacturaID, facturas.CiudadEnvio, clientes.Ciudad
FROM clientes, facturas
WHERE clientes.ClienteID = facturas.ClienteID
AND substring(clientes.Ciudad,1,1) <>  substring(facturas.CiudadEnvio,1,1)
AND substring(clientes.Ciudad,2,2) <>  substring(facturas.CiudadEnvio,2,2);

SELECT substring(Contacto,1,1) FROM clientes;

