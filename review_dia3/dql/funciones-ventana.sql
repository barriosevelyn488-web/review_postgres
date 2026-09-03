-- 1. Ranking de mayores ventas (ROW_NUMBER)
-- Obtener todas las ventas ordenadas de mayor a menor con su posición general.
SELECT 
    id,
    monto,
    fecha,
    vendedor_id,
    ROW_NUMBER() OVER (ORDER BY monto DESC) AS ranking_general
FROM ventas;

-- 2. Porcentaje sobre el total del mes (SUM() OVER)
-- Porcentaje que representa cada venta respecto al total vendido en su mismo mes.
SELECT 
    id,
    fecha,
    monto,
    SUM(monto) OVER (PARTITION BY EXTRACT(MONTH FROM fecha), EXTRACT(YEAR FROM fecha)) AS total_mes,
    ROUND((monto / SUM(monto) OVER (PARTITION BY EXTRACT(MONTH FROM fecha), EXTRACT(YEAR FROM fecha))) * 100, 2) AS porcentaje_del_mes
FROM ventas
ORDER BY fecha ASC, monto DESC;