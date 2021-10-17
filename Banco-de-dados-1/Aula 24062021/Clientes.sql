SELECT Contacto, Compania, Titulo, Pais
FROM clientes
ORDER BY Pais;

SELECT Contacto, Compania, Titulo
FROM clientes
WHERE Titulo = "Owner";

SELECT Contacto, Compania, Titulo
FROM clientes
WHERE Contacto LIKE "C%";