INSERT INTO vendedores (nombre) VALUES
('Carlos Mendoza'),
('Ana López'),
('Roberto Gómez');

INSERT INTO productos (nombre, precio, stock) VALUES
('Teclado Mecánico', 80.00, 10),
('Monitor 24 pulgadas', 200.00, 5),
('Mouse Inalámbrico', 25.00, 30),
('Silla Ergonómica', 350.00, 8);

INSERT INTO ventas (monto, fecha, vendedor_id) VALUES
(150.00, '2024-03-01', 1),
(350.00, '2024-03-02', 1),
(500.00, '2024-03-05', 2),
(200.00, '2024-03-10', 3),
(450.00, '2024-03-12', 2);