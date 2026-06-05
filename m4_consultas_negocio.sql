
-- ═══════════════════════════════════════════════
-- RetailPro - Consultas de Negocio
-- Módulo 4 - SQL para Data Analytics
-- Autor: Gerónimo Daguerre
-- Fecha: 05/06/2026
-- ═══════════════════════════════════════════════

-------------------------------------------------
-- Consulta 1
-- Ventas totales por categoría
-------------------------------------------------

SELECT
    category,
    SUM(total_amount) AS ventas_totales
FROM sales
GROUP BY category
ORDER BY ventas_totales DESC;

-- Interpretación:
-- Permite identificar qué categorías generan
-- mayores ingresos para la empresa.


-------------------------------------------------
-- Consulta 2
-- Cantidad de ventas por cliente
-------------------------------------------------

SELECT
    customer_id,
    COUNT(*) AS cantidad_compras
FROM sales
GROUP BY customer_id
ORDER BY cantidad_compras DESC;

-- Interpretación:
-- Permite identificar clientes recurrentes
-- y potenciales segmentos de fidelización.


-------------------------------------------------
-- Consulta 3
-- Ticket promedio por categoría
-------------------------------------------------

SELECT
    category,
    AVG(total_amount) AS ticket_promedio
FROM sales
GROUP BY category
ORDER BY ticket_promedio DESC;

-- Interpretación:
-- Muestra qué categorías generan
-- mayor ingreso promedio por venta.


-------------------------------------------------
-- Consulta 4
-- Categorías con ventas superiores a 1000
-------------------------------------------------

SELECT
    category,
    SUM(total_amount) AS ventas_totales
FROM sales
GROUP BY category
HAVING SUM(total_amount) > 1000
ORDER BY ventas_totales DESC;

-- Interpretación:
-- Identifica las líneas de negocio
-- con mayor impacto económico.


-------------------------------------------------
-- Consulta 5
-- Top 3 productos más vendidos
-------------------------------------------------

SELECT TOP 3
    product_name,
    SUM(quantity) AS unidades_vendidas
FROM sales
GROUP BY product_name
ORDER BY unidades_vendidas DESC;

-- Interpretación:
-- Permite detectar productos líderes
-- para planificación comercial y stock.


-------------------------------------------------
-- Consulta 6
-- Clasificación de ventas mediante CASE
-------------------------------------------------

SELECT
    product_name,
    total_amount,

    CASE
        WHEN total_amount >= 1000 THEN 'Venta Alta'
        WHEN total_amount >= 500 THEN 'Venta Media'
        ELSE 'Venta Baja'
    END AS clasificacion_venta

FROM sales
ORDER BY total_amount DESC;

-- Interpretación:
-- Clasifica operaciones según su valor,
-- facilitando segmentaciones y análisis.
