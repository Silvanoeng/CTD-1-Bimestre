SELECT *FROM categorias;

SELECT CategoriaNombre, Descripcion
FROM categorias;

SELECT *FROM productos;

SELECT ProductoNombre
FROM productos
WHERE Discontinuado<>0;

SELECT ProductoNombre, ProveedorID
FROM productos
WHERE ProveedorID=8;

SELECT ProductoNombre, PrecioUnitario
FROM productos
WHERE PrecioUnitario BETWEEN 10 AND 22;

SELECT ProductoNombre, ProveedorID, UnidadesStock, NivelReorden,UnidadesPedidas
FROM productos
WHERE UnidadesStock<NivelReorden;

SELECT ProductoNombre, ProveedorID, UnidadesStock, NivelReorden, UnidadesPedidas
FROM productos
WHERE UnidadesStock<NivelReorden
AND UnidadesPedidas=0;



