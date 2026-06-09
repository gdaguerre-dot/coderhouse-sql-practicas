Este repositorio reúne los ejercicios, prácticas y proyectos desarrollados durante mi formación en Data Analytics. El objetivo es documentar el proceso de aprendizaje, consolidar conocimientos técnicos y construir un portfolio orientado al análisis de datos, modelado de bases de datos y Business Intelligence.

Módulo 1 – Introducción al Análisis de Datos

Durante el Módulo 1 incorporé los fundamentos del análisis de datos y comprendí el rol estratégico que cumplen los datos en la toma de decisiones dentro de las organizaciones.

Aprendí las diferencias entre datos, información y conocimiento, así como las principales etapas del ciclo de vida de los datos: recolección, almacenamiento, procesamiento, análisis y visualización.

También conocí los distintos perfiles profesionales que intervienen en el ecosistema de datos, incluyendo Data Analyst, Data Scientist y Data Engineer, comprendiendo las responsabilidades y herramientas asociadas a cada uno.

Finalmente, trabajé conceptos básicos de métricas, indicadores y preguntas de negocio, desarrollando una visión analítica orientada a transformar datos en información útil para la toma de decisiones.

Módulo 2 – Modelado y Diseño de Bases de Datos

Durante el Módulo 2 trabajé conceptos fundamentales de modelado y arquitectura de datos.

Aprendí a identificar entidades, atributos y relaciones mediante modelos Entidad–Relación (ER), y a traducir esos modelos a estructuras relacionales utilizando claves primarias y foráneas.

También estudié los principios de normalización (1NF, 2NF y 3NF) para reducir redundancias, mejorar la integridad de los datos y optimizar el almacenamiento de información.

Además, desarrollé modelos de datos orientados a resolver problemas de negocio reales, comprendiendo cómo un buen diseño impacta directamente en la calidad de los análisis posteriores.

Como actividad práctica diseñé modelos relacionales para distintos casos de negocio y construí diagramas ER aplicando buenas prácticas de modelado.

Módulo 3 – Introducción a SQL y Sublenguajes

Durante el Módulo 3 comencé a trabajar con SQL como lenguaje principal para interactuar con bases de datos relacionales.

Aprendí la estructura básica de una consulta SQL utilizando la sentencia SELECT para recuperar información almacenada en tablas.

También incorporé los distintos sublenguajes de SQL:

DDL (Data Definition Language) para definir estructuras.
DML (Data Manipulation Language) para insertar, modificar y eliminar datos.
DQL (Data Query Language) para realizar consultas.
DCL (Data Control Language) para administrar permisos.
TCL (Transaction Control Language) para gestionar transacciones.

Además, practiqué operaciones básicas de filtrado mediante WHERE, ordenamiento con ORDER BY y limitación de resultados utilizando TOP o LIMIT según el motor de base de datos.

Este módulo sentó las bases para comenzar a trabajar con consultas analíticas más complejas en los módulos posteriores.

Módulo 4 – Sintaxis SQL y Manipulación de Datos

Durante el Módulo 4 profundicé en el uso de SQL para la extracción, filtrado y organización de información almacenada en bases de datos relacionales.

Comencé trabajando con la sentencia SELECT, aprendiendo a consultar tablas completas y a seleccionar únicamente las columnas necesarias para cada análisis.

También incorporé el uso de alias mediante AS para mejorar la legibilidad de los resultados y facilitar la interpretación de consultas complejas.

Trabajé distintos operadores de filtrado utilizando WHERE junto con:

Operadores de comparación (=, <>, >, <, >=, <=).
Operadores lógicos (AND, OR, NOT).
BETWEEN.
IN.
LIKE.
IS NULL.

Aprendí a ordenar resultados mediante ORDER BY y a limitar registros utilizando TOP y LIMIT.

Posteriormente profundicé en funciones de agregación:

COUNT()
SUM()
AVG()
MIN()
MAX()

y su combinación con GROUP BY para resumir información según diferentes dimensiones de análisis.

También trabajé filtros sobre datos agregados utilizando HAVING y desarrollé consultas orientadas a responder preguntas de negocio reales como:

Ranking de productos.
Ventas por región.
Clientes activos.
Indicadores de desempeño comercial.

Como proyecto práctico construí un esquema relacional completo para una empresa de tecnología, generando consultas analíticas y documentando hallazgos de negocio a partir de los resultados obtenidos.

Módulo 5 – JOINs, Orden de Ejecución y Combinación de Resultados

Durante el Módulo 5 profundicé en uno de los conceptos más importantes del análisis de datos con SQL: la combinación de información proveniente de múltiples tablas.

Aprendí a utilizar distintos tipos de JOIN según la necesidad de negocio:

INNER JOIN para recuperar únicamente registros coincidentes entre tablas.
LEFT JOIN para conservar todos los registros de la tabla principal e identificar faltantes mediante valores NULL.
RIGHT JOIN y FULL OUTER JOIN para escenarios donde es necesario conservar registros de ambas fuentes.

También trabajé la detección de inconsistencias y registros sin correspondencia utilizando LEFT JOIN combinado con filtros WHERE IS NULL, una técnica ampliamente utilizada en auditorías de datos y procesos de conciliación.

Además, incorporé los operadores:

UNION
UNION ALL

para consolidar resultados provenientes de múltiples consultas.

Comprendí que:

UNION elimina registros duplicados.
UNION ALL conserva todos los registros y ofrece un mejor rendimiento cuando no es necesario eliminar duplicados.

Otro aprendizaje clave fue comprender el orden real de ejecución de SQL:

FROM / JOIN
WHERE
GROUP BY
HAVING
SELECT
DISTINCT
ORDER BY
LIMIT / TOP

Este conocimiento me permitió entender con mayor profundidad cómo procesa las consultas el motor de base de datos y cómo optimizar consultas analíticas.

Como práctica desarrollé ejercicios orientados a:

Construcción de vistas enriquecidas para herramientas de Business Intelligence.
Detección de clientes sin actividad y productos sin ventas.
Consolidación de datos mediante UNION y UNION ALL.
Auditorías de calidad e integración de datos utilizando JOINs.
Herramientas Utilizadas
SQL
MySQL
SQL Server (conceptos)
Draw.io
Lucidchart
Git
GitHub
Próximos Pasos

En los siguientes módulos continuaré profundizando en:

Consultas SQL avanzadas.
Subconsultas.
CTEs (Common Table Expressions).
Funciones de ventana.
Optimización de consultas.
Business Intelligence.
Power BI.
Visualización de datos.
Proyectos integradores orientados a análisis de negocio.

Autor: Gerónimo Daguerre
Curso: Data Analytics – Coderhouse
Año: 2026

