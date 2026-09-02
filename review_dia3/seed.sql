INSERT INTO vendedores (nombre, email) VALUES
('Carlos Mendoza', 'carlos@ejemplo.com'),
('Ana López', 'ana@ejemplo.com'),
('Roberto Gómez', 'roberto@ejemplo.com'),
('Laura Martínez', 'laura@ejemplo.com');

INSERT INTO ventas (monto, fecha, vendedor_id) VALUES
-- Ventas de Enero 2024
(350.00, '2024-01-05', 1),
(150.00, '2024-01-10', 2),
(500.00, '2024-01-15', 1),
(120.00, '2024-01-20', 3),

-- Ventas de Febrero 2024
(220.00, '2024-02-02', 2),
(180.00, '2024-02-11', 4),
(450.00, '2024-02-18', 1),
(300.00, '2024-02-25', 3),

-- Ventas de Marzo 2024
(600.00, '2024-03-01', 1),
(100.00, '2024-03-10', 2),
(210.00, '2024-03-15', 3),
(90.00,  '2024-03-22', 4);