-- EJERCICIOS SQL - BASE DE DATOS OFICINA (Oracle SQL)[cite: 1]

-- ============================================================
-- NIVEL BÁSICO
-- ============================================================

-- EJERCICIO 1
SELECT * 
FROM clientes;

-- EJERCICIO 2
SELECT Num_clie, Empresa, Limite_credito 
FROM clientes;

-- EJERCICIO 3
SELECT * 
FROM clientes 
WHERE Limite_credito >= 50000 
ORDER BY Limite_credito DESC;

-- EJERCICIO 4
SELECT Num_empl, Nombre, Edad, Ventas 
FROM repventas 
WHERE Titulo = 'Rep Ventas';

-- EJERCICIO 5
SELECT Id_fab, Id_producto, Descripcion, Precio 
FROM productos 
WHERE Precio > 1000 
ORDER BY Precio DESC;

-- EJERCICIO 6
SELECT DISTINCT Ciudad 
FROM oficinas;

-- EJERCICIO 7
SELECT Num_pedido, Fecha_pedido, Clie, Rep, Importe 
FROM pedidos 
WHERE EXTRACT(YEAR FROM Fecha_pedido) = 1990 
  AND EXTRACT(MONTH FROM Fecha_pedido) = 1 
ORDER BY Fecha_pedido;

-- EJERCICIO 8
SELECT Num_empl, Nombre, Edad, Ventas 
FROM repventas 
WHERE Edad BETWEEN 30 AND 50 
ORDER BY Edad ASC;