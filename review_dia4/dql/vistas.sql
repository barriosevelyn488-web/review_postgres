-- 1. Vista de ventas destacadas (monto >= 300.00)
CREATE OR REPLACE VIEW vw_ventas_destacadas AS
SELECT 
    v.fecha,
    vend.nombre AS vendedor,
    v.monto
FROM ventas v
INNER JOIN vendedores vend ON v.vendedor_id = vend.id
WHERE v.monto >= 300.00;

-- 2. Vista de resumen de vendedores (total transacciones y precio promedio)
CREATE OR REPLACE VIEW vw_resumen_vendedores AS
SELECT 
    vend.nombre AS vendedor,
    COUNT(v.id) AS total_transacciones,
    ROUND(AVG(v.monto), 2) AS precio_promedio
FROM vendedores vend
LEFT JOIN ventas v ON vend.id = v.vendedor_id
GROUP BY vend.id, vend.nombre;