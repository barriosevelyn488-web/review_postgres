-- 1. Procedimiento para ajustar precios según stock mínimo
CREATE OR REPLACE PROCEDURE sp_ajustar_precios_bajo_stock(
    p_limite_stock INT,
    p_incremento_porcentaje NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE productos
    SET precio = precio * (1 + (p_incremento_porcentaje / 100.0))
    WHERE stock < p_limite_stock;
END;
$$;

-- Ejemplo de uso del procedimiento:
-- CALL sp_ajustar_precios_bajo_stock(15, 10.00);


-- 2. Función para calcular precio con descuento de un producto
CREATE OR REPLACE FUNCTION fn_aplicar_descuento_producto(
    p_producto_id INT,
    p_porcentaje_descuento NUMERIC
)
RETURNS NUMERIC
LANGUAGE plpgsql
AS $$
DECLARE
    v_precio_original NUMERIC;
    v_precio_final NUMERIC;
BEGIN
    -- Obtener el precio del producto
    SELECT precio INTO v_precio_original
    FROM productos
    WHERE id = p_producto_id;

    -- Calcular precio final con el descuento aplicado
    v_precio_final := v_precio_original * (1 - (p_porcentaje_descuento / 100.0));

    RETURN ROUND(v_precio_final, 2);
END;
$$;

-- Ejemplo de uso de la función:
-- SELECT fn_aplicar_descuento_producto(1, 15.00);