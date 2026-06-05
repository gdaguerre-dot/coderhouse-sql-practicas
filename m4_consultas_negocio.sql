-- ═══════════════════════════════════════════════
-- RetailPro - Consultas de Negocio
-- Módulo 4 - SQL para Data Analytics
-- Autor: Gerónimo Daguerre
-- Base utilizada: Ventas_Tech_DB
-- ═══════════════════════════════════════════════

---

-- CONSULTA 1
-- Ventas por ciudad (territorio) y mes
---------------------------------------

SELECT
MONTH(v.fecha_venta) AS mes,
c.ciudad,
SUM(v.cantidad * v.precio_unitario) AS ventas_totales
FROM ventas v
INNER JOIN clientes c
ON v.id_cliente = c.id_cliente
GROUP BY
MONTH(v.fecha_venta),
c.ciudad
ORDER BY ventas_totales DESC;

---

-- CONSULTA 2
-- Ranking de productos por facturación
---------------------------------------

SELECT
p.nombre_producto,
SUM(v.cantidad * v.precio_unitario) AS facturacion_total
FROM ventas v
INNER JOIN productos p
ON v.id_producto = p.id_producto
GROUP BY p.nombre_producto
ORDER BY facturacion_total DESC;

---

-- CONSULTA 3
-- Clientes activos
-------------------

SELECT
c.nombre,
COUNT(v.id_venta) AS cantidad_compras
FROM clientes c
INNER JOIN ventas v
ON c.id_cliente = v.id_cliente
GROUP BY c.nombre
ORDER BY cantidad_compras DESC;

---

-- CONSULTA 4
-- Performance comercial por ciudad
-----------------------------------

SELECT
c.ciudad,

```
AVG(v.cantidad * v.precio_unitario) AS ticket_promedio,

CASE
    WHEN AVG(v.cantidad * v.precio_unitario) >
         (
            SELECT AVG(cantidad * precio_unitario)
            FROM ventas
         )
    THEN 'Por encima del promedio'

    ELSE 'Por debajo del promedio'
END AS performance
```

FROM ventas v
INNER JOIN clientes c
ON v.id_cliente = c.id_cliente

GROUP BY c.ciudad
ORDER BY ticket_promedio DESC;

---

## -- HALLAZGOS DE NEGOCIO

-- Hallazgo 1:
-- Laptop Pro 15 es el producto con mayor facturación
-- acumulada, alcanzando 3.600 en ventas.

-- Hallazgo 2:
-- Todos los clientes registrados realizaron
-- al menos dos compras, por lo que la base
-- presenta un 100% de clientes activos.

-- Hallazgo 3:
-- Las ciudades asociadas a productos de la
-- categoría Computación presentan tickets
-- promedio superiores al promedio global.

-- Hallazgo 4:
-- El análisis por ciudad permite aproximar
-- el desempeño territorial solicitado en
-- el brief de RetailPro.
