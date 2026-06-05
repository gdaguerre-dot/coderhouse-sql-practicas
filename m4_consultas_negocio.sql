-- ═══════════════════════════════════════════════
-- RetailPro - Consultas de Negocio
-- Módulo 4 - SQL para Data Analytics
-- Autor: Gerónimo Daguerre
-- Fecha: Junio 2026
-- ═══════════════════════════════════════════════

-- Contexto:
-- Las siguientes consultas fueron diseñadas a partir
-- del modelo relacional RetailPro definido en el brief
-- analítico del proyecto.
--------------------------

-- Tablas utilizadas:
-- CLIENTES
-- PRODUCTOS
-- VENTAS
-- TERRITORIOS
--------------

-- Objetivo:
-- Obtener indicadores de negocio mediante funciones
-- de agregación, agrupamiento, filtros de grupos,
-- rankings y clasificaciones para apoyar futuras
-- visualizaciones en Power BI.

---

-- CONSULTA 1
-- Ventas totales por región
----------------------------

SELECT
t.region,
SUM(v.total_venta) AS ventas_totales
FROM ventas v
INNER JOIN territorios t
ON v.id_territorio = t.id_territorio
GROUP BY t.region
ORDER BY ventas_totales DESC;

-- Interpretación:
-- Permite identificar qué regiones generan
-- el mayor volumen de ingresos para RetailPro.

---

-- CONSULTA 2
-- Ticket promedio por región
-----------------------------

SELECT
t.region,
AVG(v.total_venta) AS ticket_promedio
FROM ventas v
INNER JOIN territorios t
ON v.id_territorio = t.id_territorio
GROUP BY t.region
ORDER BY ticket_promedio DESC;

-- Interpretación:
-- Permite comparar el valor promedio de las
-- transacciones realizadas en cada región.

---

-- CONSULTA 3
-- Regiones con ventas superiores al promedio
---------------------------------------------

SELECT
t.region,
SUM(v.total_venta) AS ventas_totales
FROM ventas v
INNER JOIN territorios t
ON v.id_territorio = t.id_territorio
GROUP BY t.region
HAVING SUM(v.total_venta) >
(
SELECT AVG(total_venta)
FROM ventas
)
ORDER BY ventas_totales DESC;

-- Interpretación:
-- Identifica regiones cuyo desempeño comercial
-- supera el promedio general registrado.

---

-- CONSULTA 4
-- Clasificación regional mediante CASE WHEN
--------------------------------------------

SELECT
t.region,

```
AVG(v.total_venta) AS ticket_promedio,

CASE
    WHEN AVG(v.total_venta) >
         (SELECT AVG(total_venta)
          FROM ventas)
    THEN 'Por encima del promedio'

    ELSE 'Por debajo del promedio'
END AS rendimiento_region
```

FROM ventas v
INNER JOIN territorios t
ON v.id_territorio = t.id_territorio

GROUP BY t.region
ORDER BY ticket_promedio DESC;

-- Interpretación:
-- Clasifica cada región según su rendimiento
-- relativo respecto al promedio general.

-- ==========================================
-- HALLAZGOS DE NEGOCIO
-- ==========================================

-- Hallazgo 1:
-- El análisis de ventas por región permite
-- identificar los territorios con mayor
-- contribución a la facturación total.

-- Hallazgo 2:
-- El ticket promedio regional facilita la
-- comparación del comportamiento comercial
-- entre diferentes mercados geográficos.

-- Hallazgo 3:
-- La clasificación mediante CASE WHEN permite
-- detectar rápidamente regiones por encima
-- y por debajo del promedio general, ayudando
-- a priorizar acciones comerciales y futuras
-- visualizaciones en Power BI.
