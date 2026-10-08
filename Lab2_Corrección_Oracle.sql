-- ============================================================
-- 1. TABLA CLIENTES
-- ============================================================

CREATE TABLE clientes(
Num_clie INTEGER NOT NULL PRIMARY KEY,
Empresa CHAR(20) NOT NULL,
Repclie INTEGER,
Limite_credito NUMERIC
);

INSERT INTO clientes VALUES (2101, 'Jones Mfg.',        106, 65000);
INSERT INTO clientes VALUES (2102, 'First. Corp.',      101, 65000);
INSERT INTO clientes VALUES (2103, 'Acme Mfg.',         105, 50000);
INSERT INTO clientes VALUES (2105, 'AAA Investments',   101, 45000);
INSERT INTO clientes VALUES (2106, 'Fred Lewis Corp.',  102, 65000);
INSERT INTO clientes VALUES (2107, 'Ace International', 110, 35000);
INSERT INTO clientes VALUES (2108, 'Holm Landis',       109, 55000);
INSERT INTO clientes VALUES (2109, 'Chen Associates',   103, 25000);
INSERT INTO clientes VALUES (2111, 'JCP Inc.',          103, 50000);
INSERT INTO clientes VALUES (2112, 'Zetacorp',          108, 50000);
INSERT INTO clientes VALUES (2113, 'Ian Schmidt',       104, 20000);
INSERT INTO clientes VALUES (2114, 'Orion Corp.',       102, 20000);
INSERT INTO clientes VALUES (2115, 'Smithson Corp.',    101, 20000);
INSERT INTO clientes VALUES (2117, 'J.P. Sinclair',     106, 35000);
INSERT INTO clientes VALUES (2118, 'Midwest Systems',    108, 60000);
INSERT INTO clientes VALUES (2119, 'Solomon Inc.',      109, 25000);
INSERT INTO clientes VALUES (2120, 'Rico Enterprises',  102, 50000);
INSERT INTO clientes VALUES (2121, 'QMA Assoc.',        103, 45000);
INSERT INTO clientes VALUES (2122, 'Three-Way Lines',   105, 30000);
INSERT INTO clientes VALUES (2123, 'Carter Sons',       102, 40000);
INSERT INTO clientes VALUES (2124, 'Peter Brothers',    107, 40000);

-- ============================================================
-- 2. TABLA REPVENTAS
-- ============================================================

CREATE TABLE repventas (
    Num_empl INTEGER NOT NULL PRIMARY KEY,
    Nombre CHAR(15) NOT NULL,
    Edad INTEGER,
    Oficina_rep INTEGER,
    Titulo CHAR(10),
    Contrato DATE NOT NULL,
    Director INTEGER,
    Cuota NUMERIC,
    Ventas NUMERIC NOT NULL
);

INSERT INTO repventas VALUES
(101, 'Dan Roberts',   45, 12, 'Rep Ventas', DATE '1986-10-20', 104, 300000, 305673);
INSERT INTO repventas VALUES
(102, 'Sue Smith',     48, 21, 'Rep Ventas', DATE '1986-12-12', 108, 350000, 474050);
INSERT INTO repventas VALUES
(103, 'Paul Cruz',     29, 12, 'Rep Ventas', DATE '1987-04-01', 104, 275000, 286775);
INSERT INTO repventas VALUES
(104, 'Bob Smith',     33, 12, 'Dir Ventas', DATE '1987-05-19', 106, 200000, 142594);
INSERT INTO repventas VALUES
(105, 'Bill Adams',    37, 13, 'Rep Ventas', DATE '1988-02-12', 104, 350000, 367911);
INSERT INTO repventas VALUES
(106, 'Sam Clark',     52, 11, 'VP Ventas',  DATE '1988-06-14', NULL, 275000, 299912);
INSERT INTO repventas VALUES
(107, 'Nancy Angelli', 49, 22, 'Rep Ventas', DATE '1988-11-14', 108, 300000, 186042);
INSERT INTO repventas VALUES
(108, 'Larry Fitch',   62, 21, 'Dir Ventas', DATE '1989-10-12', 106, 350000, 361865);
INSERT INTO repventas VALUES
(109, 'Mary Jones',    31, 11, 'Rep Ventas', DATE '1989-10-12', 106, 300000, 392725);
INSERT INTO repventas VALUES
(110, 'Tom Snyder',    41, NULL, 'Rep Ventas', DATE '1990-01-14', 101, NULL, 75985);

-- ============================================================
-- 3. TABLA OFICINAS
-- ============================================================

CREATE TABLE oficinas (
    Oficina INTEGER NOT NULL PRIMARY KEY,
    Ciudad CHAR (15) NOT NULL,
    Region CHAR(10) NOT NULL,
    Dir INTEGER REFERENCES repventas (Num_empl),
    Objetivo NUMBER,
    Ventas NUMBER NOT NULL
);

INSERT INTO oficinas VALUES (11, 'New York',    'Este',  106, 575000, 692637);
INSERT INTO oficinas VALUES (12, 'Chicago',     'Este',  104, 800000, 735042);
INSERT INTO oficinas VALUES (13, 'Atlanta',     'Este',  105, 350000, 367911);
INSERT INTO oficinas VALUES (21, 'Los Angeles', 'Oeste', 108, 725000, 835915);
INSERT INTO oficinas VALUES (22, 'Denver',      'Oeste', 108, 300000, 186042);

-- ============================================================
-- 4. TABLA PRODUCTOS
-- ============================================================

CREATE TABLE productos (
    Id_fab CHAR(3) NOT NULL,
    Id_producto CHAR(5) NOT NULL,
    Descripcion CHAR(20) NOT NULL,
    Precio NUMBER NOT NULL,
    Existencias INTEGER NOT NULL,
    CONSTRAINT productos_pk PRIMARY KEY (Id_fab, Id_producto)
);

INSERT INTO productos VALUES ('ACI', '41001', 'Articulo Tipo 1',     55,   277);
INSERT INTO productos VALUES ('ACI', '41002', 'Articulo Tipo 2',     76,   167);
INSERT INTO productos VALUES ('ACI', '41003', 'Articulo Tipo 3',    107,   207);
INSERT INTO productos VALUES ('ACI', '41004', 'Articulo Tipo 4',    117,   139);
INSERT INTO productos VALUES ('ACI', '4100X', 'Ajustador',           25,    37);
INSERT INTO productos VALUES ('ACI', '4100Y', 'Extractor',         2750,    25);
INSERT INTO productos VALUES ('ACI', '4100Z', 'Montador',          2500,    28);

INSERT INTO productos VALUES ('BIC', '41003', 'Manivela',           652,     3);
INSERT INTO productos VALUES ('BIC', '41089', 'Retn',               225,    78);
INSERT INTO productos VALUES ('BIC', '41672', 'Plate',              180,     0);

INSERT INTO productos VALUES ('FEA', '112',   'Cubierta',           148,   115);
INSERT INTO productos VALUES ('FEA', '114',   'Bancada Motor',      243,    15);

INSERT INTO productos VALUES ('IMM', '773C',  'Riostra 1/2 Tm',     975,    28);
INSERT INTO productos VALUES ('IMM', '775C',  'Riostra 1-Tm',      1425,     5);
INSERT INTO productos VALUES ('IMM', '779C',  'Riostra 2-Tm',      1875,     9);
INSERT INTO productos VALUES ('IMM', '878H',  'Soporte Riostra',     54,   223);
INSERT INTO productos VALUES ('IMM', '887P',  'Perno Riostra',      250,    24);
INSERT INTO productos VALUES ('IMM', '887X',  'Retenedor Riostra',  475,    32);

INSERT INTO productos VALUES ('QSA', 'XK47',  'Reductor',           355,    38);
INSERT INTO productos VALUES ('QSA', 'XK48',  'Reductor',           134,   203);
INSERT INTO productos VALUES ('QSA', 'XK48A', 'Reductor',           117,    37);

INSERT INTO productos VALUES ('REI', '2A44G', 'Pasador Bisagra',    350,    14);
INSERT INTO productos VALUES ('REI', '2A44L', 'Bisagra Izqda.',    4500,    12);
INSERT INTO productos VALUES ('REI', '2A44R', 'Bisagra Dcha.',     4500,    12);
INSERT INTO productos VALUES ('REI', '2A45C', 'V Stago Trinquete',   79,   210);

-- ============================================================
-- 5. TABLA PEDIDOS
-- ============================================================

CREATE TABLE pedidos (
    Num_pedido INTEGER NOT NULL PRIMARY KEY,
    Fecha_pedido DATE NOT NULL,
    Clie INTEGER NOT NULL REFERENCES clientes (Num_clie),
    Rep INTEGER REFERENCES repventas (Num_empl),
    Fab CHAR(3) NOT NULL,
    Producto CHAR(5) NOT NULL,
    Cant INTEGER NOT NULL,
    Importe NUMBER NOT NULL
);

INSERT INTO pedidos VALUES (110036, DATE '1990-01-30', 2107, 110, 'ACI', '4100Z',  9, 22500);
INSERT INTO pedidos VALUES (112961, DATE '1989-12-17', 2117, 106, 'REI', '2A44L',  7, 31500);
INSERT INTO pedidos VALUES (112963, DATE '1989-12-17', 2103, 105, 'ACI', '41004', 28,  3276);
INSERT INTO pedidos VALUES (112968, DATE '1989-10-12', 2102, 101, 'ACI', '41004', 34,  3978);
INSERT INTO pedidos VALUES (112975, DATE '1989-10-12', 2111, 103, 'REI', '2A44G',  6,  2100);
INSERT INTO pedidos VALUES (112979, DATE '1989-10-12', 2114, 102, 'ACI', '4100Z',  6, 15000);
INSERT INTO pedidos VALUES (112983, DATE '1989-12-27', 2103, 105, 'ACI', '41004',  6,   702);
INSERT INTO pedidos VALUES (112987, DATE '1989-12-31', 2103, 105, 'ACI', '4100Y', 11, 27500);
INSERT INTO pedidos VALUES (112989, DATE '1990-01-04', 2101, 106, 'FEA', '114',    6,  1458);
INSERT INTO pedidos VALUES (112992, DATE '1989-11-04', 2118, 108, 'ACI', '41002', 10,   760);
INSERT INTO pedidos VALUES (112993, DATE '1989-01-04', 2106, 102, 'REI', '2A45C', 24,  1896);
INSERT INTO pedidos VALUES (112997, DATE '1990-01-08', 2124, 107, 'BIC', '41003',  1,   652);
INSERT INTO pedidos VALUES (113003, DATE '1990-01-25', 2108, 109, 'IMM', '779C',   3,  5625);
INSERT INTO pedidos VALUES (113007, DATE '1990-01-08', 2112, 108, 'IMM', '773C',   3,  2925);
INSERT INTO pedidos VALUES (113012, DATE '1990-01-11', 2111, 105, 'ACI', '41003', 35,  3745);
INSERT INTO pedidos VALUES (113013, DATE '1990-01-14', 2118, 108, 'BIC', '41003',  1,   652);
INSERT INTO pedidos VALUES (113024, DATE '1990-01-20', 2114, 108, 'QSA', 'XK47',  20,  7100);
INSERT INTO pedidos VALUES (113027, DATE '1990-01-22', 2103, 105, 'ACI', '41002', 54,  4104);
INSERT INTO pedidos VALUES (113034, DATE '1990-01-29', 2107, 110, 'REI', '2A45C',  8,   632);
INSERT INTO pedidos VALUES (113042, DATE '1990-02-02', 2113, 101, 'REI', '2A44R',  5, 22500);
INSERT INTO pedidos VALUES (113045, DATE '1990-02-02', 2112, 108, 'REI', '2A44R', 10, 45000);
INSERT INTO pedidos VALUES (113048, DATE '1990-02-10', 2120, 102, 'IMM', '779C',   2,  3750);
INSERT INTO pedidos VALUES (113049, DATE '1990-02-10', 2118, 108, 'QSA', 'XK47',   6,  2130);
INSERT INTO pedidos VALUES (113051, DATE '1990-02-10', 2118, 108, 'QSA', 'XK47',   4,  1420);
INSERT INTO pedidos VALUES (113055, DATE '1990-02-15', 2108, 101, 'ACI', '4100X',  6,   150);
INSERT INTO pedidos VALUES (113057, DATE '1990-02-18', 2111, 103, 'ACI', '4100X', 24,   600);
INSERT INTO pedidos VALUES (113058, DATE '1990-02-24', 2108, 109, 'FEA', '112',   10,  1480);
INSERT INTO pedidos VALUES (113062, DATE '1990-02-24', 2124, 107, 'FEA', '114',   10,  2430);
INSERT INTO pedidos VALUES (113065, DATE '1990-02-27', 2106, 102, 'QSA', 'XK47',   6,  2130);
INSERT INTO pedidos VALUES (113069, DATE '1990-04-02', 2109, 107, 'IMM', '775C',  22, 31350);

-- ============================================================
-- CONSULTAS DE VERIFICACIÓN
-- ============================================================

SELECT * FROM clientes ORDER BY Num_clie;
SELECT * FROM repventas ORDER BY Num_empl;
SELECT * FROM oficinas ORDER BY Oficia;
SELECT * FROM productos ORDER BY Id_fab, Id_producto;
SELECT * FROM pedido ORDER BY Num_pedido;
