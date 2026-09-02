-- Reporte con total acumulado y promedio por transacción usando CTE.
-- Filtra únicamente a los vendedores con promedio por transacción superior a $200.00.
WITH metricas_vendedor AS (
    SELECT 
        vendedor_id,
        SUM(monto) AS total_acumulado,
        AVG(monto) AS promedio_transaccion
    FROM ventas
    GROUP BY vendedor_id
)
SELECT 
    v.id AS vendedor_id,
    v.nombre AS vendedor,
    m.total_acumulado,
    ROUND(m.promedio_transaccion, 2) AS promedio_transaccion
FROM metricas_vendedor m
INNER JOIN vendedores v ON m.vendedor_id = v.id
WHERE m.promedio_transaccion > 200.00
ORDER BY m.total_acumulado DESC;