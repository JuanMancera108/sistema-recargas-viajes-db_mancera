-- Auditoría cambios por mes
SELECT DATE_TRUNC('month', fecha) AS mes, COUNT(*) AS cambios
FROM auditoria_tarjeta
WHERE fecha > NOW() - INTERVAL '1 year'
GROUP BY mes
ORDER BY mes;

-- 5 tarjetas con más cambios
SELECT tarjeta_id, COUNT(*) AS cambios
FROM auditoria_tarjeta
GROUP BY tarjeta_id
ORDER BY cambios DESC
LIMIT 5;

-- Recargas con descripción de promoción
SELECT r.id, r.monto, p.descripcion
FROM recargas r
LEFT JOIN promociones p ON r.promocion_id = p.id;

-- Monto total recargado por tipo promoción últimos 3 meses
SELECT p.nombre, SUM(r.monto) AS total_recargado
FROM recargas r
JOIN promociones p ON r.promocion_id = p.id
WHERE r.fecha > NOW() - INTERVAL '3 months'
GROUP BY p.nombre;

-- Promociones con "bonus" en el nombre
SELECT * FROM promociones WHERE nombre ILIKE '%bonus%';

-- Viajes sin registro de validación
SELECT * FROM viajes WHERE dispositivo_id IS NULL;

-- Validaciones móviles en abril 2025
SELECT v.*, d.tipo
FROM viajes v
JOIN dispositivos d ON v.dispositivo_id = d.id
WHERE d.tipo = 'móvil' AND v.fecha BETWEEN '2025-04-01' AND '2025-04-30';

-- Dispositivo con más validaciones
SELECT d.id, d.tipo, COUNT(*) AS total_validaciones
FROM viajes v
JOIN dispositivos d ON v.dispositivo_id = d.id
GROUP BY d.id
ORDER BY total_validaciones DESC
LIMIT 1;

-- Incidencias por mes
SELECT DATE_TRUNC('month', fecha) AS mes, COUNT(*) AS total
FROM incidencias
GROUP BY mes
ORDER BY mes;

-- Incidencias con estado actual de tarjeta (JOIN)
SELECT i.id, i.descripcion, i.fecha, t.estado_actual
FROM incidencias i
JOIN tarjetas t
