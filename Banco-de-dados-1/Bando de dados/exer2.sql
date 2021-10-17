SELECT*
FROM empregados;

SELECT apellido, fecha_nacimiento
FROM empregados
WHERE (SELECT MAX(fecha_nacimiento) FROM empregados)
ORDER BY fecha_nacimiento;

SELECT apellido, fecha_nacimiento
FROM empregados
ORDER BY fecha_nacimiento;