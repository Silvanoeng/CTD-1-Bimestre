SELECT MAX(total)
FROM faturas
WHERE ciudad_de_facturacion="Oslo";

SELECT MIN(total)
FROM faturas;

SELECT AVG(total)
FROM faturas
WHERE pais_de_facturacion="Canada";

SELECT COUNT(*)
FROM faturas
WHERE pais_de_facturacion="Canada";

SELECT SUM(total)
FROM faturas;

SELECT id, fecha_factura, total
FROM faturas
WHERE total < (SELECT AVG(total) FROM faturas)
ORDER BY total;

SELECT*
FROM faturas;