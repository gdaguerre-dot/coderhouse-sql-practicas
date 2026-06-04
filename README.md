# coderhouse-sql-practicas
Ejercicio

Práctica
Este ejercicio te permitirá pasar de la teoría a la práctica técnica, diseñando las "estructuras" donde se almacenarán los datos de un negocio de ventas. Es el primer paso para construir una base de datos robusta.

Contexto
Vas a continuar el trabajo del Módulo 1. Imagina que ya sabes consultar datos, pero ahora te piden crear la estructura para un nuevo sistema de gestión de ventas.

Instrucciones paso a paso
Analiza los datos: Revisa mentalmente qué información necesita un "Cliente" (Nombre, Email, Fecha de Registro) y un "Producto" (Nombre, Precio, Stock).
Crea el archivo: En tu repositorio de prácticas del curso, crea un nuevo archivo llamado modulo2_unidad1_diseno.sql.
Define la Tabla de Clientes:
Usa el comando CREATE TABLE clientes.
Columna 1: id_cliente (Número entero).
Columna 2: nombre (Texto de hasta 100 caracteres).
Columna 3: perfil_bio (Texto largo para una breve biografía o notas).
Columna 4: fecha_registro (Solo fecha).
Define la Tabla de Productos:
Usa el comando CREATE TABLE productos.
Columna 1: id_producto (Número entero).
Columna 2: descripcion (Texto de hasta 255 caracteres).
Columna 3: precio (Decimal que soporte hasta 10 dígitos y 2 decimales).
Columna 4: esta_activo (Piensa: ¿Podrías usar un número pequeño o texto para representar si el producto está a la venta?).
Documenta: Agrega comentarios en tu script SQL (usando --) explicando por qué elegiste cada tipo de dato.
Criterios de aceptación
El script debe ejecutarse sin errores de sintaxis en un entorno PostgreSQL o SQL Server.
Se debe elegir DECIMAL o NUMERIC para el precio (no FLOAT para dinero).
Los nombres de las columnas no deben contener espacios ni caracteres especiales.
El repositorio debe estar organizado con el nuevo archivo SQL.
Error común a evitar
No olvides las comas , al final de cada definición de columna, excepto en la última antes de cerrar el paréntesis principal. Si olvidas una coma, SQL no entenderá dónde termina un campo y empieza el otro.
