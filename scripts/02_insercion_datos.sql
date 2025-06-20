
INSERT INTO promociones (nombre, descripcion) VALUES
('Promo 10% Bonus', 'Descuento del 10% en recargas mayores a $50'),
('Promo Semana Santa', 'Bonificación especial para viajes en Semana Santa'),
('Bonus Navidad', 'Bonificación de Navidad para usuarios frecuentes'),
('Descuento Verano', 'Descuentos especiales para verano'),
('Bonus Aniversario', 'Bonos especiales por aniversario del sistema'),
('Promo Black Friday', 'Descuentos del Black Friday'),
('Bonus por Referido', 'Bonificación por referir a un nuevo usuario'),
('Promo Cumpleaños', 'Bono especial en cumpleaños'),
('Bonus Estudiantes', 'Descuento para estudiantes'),
('Promo Usuarios Frecuentes', 'Beneficios para usuarios frecuentes'),
('Promo Especial 1', 'Bonificación especial 1'),
('Promo Especial 2', 'Bonificación especial 2'),
('Promo Especial 3', 'Bonificación especial 3'),
('Promo Especial 4', 'Bonificación especial 4'),
('Promo Especial 5', 'Bonificación especial 5'),
('Promo Especial 6', 'Bonificación especial 6'),
('Promo Especial 7', 'Bonificación especial 7'),
('Promo Especial 8', 'Bonificación especial 8'),
('Promo Especial 9', 'Bonificación especial 9'),
('Promo Especial 10', 'Bonificación especial 10');


INSERT INTO dispositivos (tipo, descripcion) VALUES
('torniquete', 'Dispositivo fijo de acceso principal'),
('móvil', 'Validador portátil para usuarios móviles'),
('torniquete', 'Torniquete secundario de entrada'),
('móvil', 'Validador móvil de apoyo'),
('torniquete', 'Torniquete en salida'),
('móvil', 'Validador móvil para eventos'),
('torniquete', 'Torniquete especial 1'),
('móvil', 'Validador especial 2'),
('torniquete', 'Torniquete especial 3'),
('móvil', 'Validador especial 4'),
('torniquete', 'Torniquete especial 5'),
('móvil', 'Validador especial 6'),
('torniquete', 'Torniquete especial 7'),
('móvil', 'Validador especial 8'),
('torniquete', 'Torniquete especial 9'),
('móvil', 'Validador especial 10');

INSERT INTO auditoria_tarjeta (tarjeta_id, estado, fecha) VALUES
(1, 'activa', NOW() - INTERVAL '10 day'),
(2, 'bloqueada', NOW() - INTERVAL '9 day'),
(3, 'activa', NOW() - INTERVAL '8 day'),
(1, 'bloqueada', NOW() - INTERVAL '7 day'),
(2, 'activa', NOW() - INTERVAL '6 day'),
(3, 'bloqueada', NOW() - INTERVAL '5 day'),
(1, 'activa', NOW() - INTERVAL '4 day'),
(2, 'bloqueada', NOW() - INTERVAL '3 day'),
(3, 'activa', NOW() - INTERVAL '2 day'),
(1, 'bloqueada', NOW() - INTERVAL '1 day'),
(4, 'activa', NOW() - INTERVAL '15 day'),
(5, 'bloqueada', NOW() - INTERVAL '14 day'),
(6, 'activa', NOW() - INTERVAL '13 day'),
(4, 'bloqueada', NOW() - INTERVAL '12 day'),
(5, 'activa', NOW() - INTERVAL '11 day'),
(6, 'bloqueada', NOW() - INTERVAL '10 day'),
(4, 'activa', NOW() - INTERVAL '9 day'),
(5, 'bloqueada', NOW() - INTERVAL '8 day'),
(6, 'activa', NOW() - INTERVAL '7 day'),
(4, 'bloqueada', NOW() - INTERVAL '6 day');

INSERT INTO incidencias (tarjeta_id, descripcion, fecha) VALUES
(1, 'Error en lectura de tarjeta', NOW() - INTERVAL '3 day'),
(2, 'Bloqueo injustificado reportado', NOW() - INTERVAL '4 day'),
(3, 'Recarga no aplicada', NOW() - INTERVAL '5 day'),
(1, 'Tarjeta perdida reportada', NOW() - INTERVAL '6 day'),
(2, 'Validación fallida en torniquete', NOW() - INTERVAL '7 day'),
(3, 'Tarjeta dañada', NOW() - INTERVAL '8 day'),
(4, 'Tarjeta inactiva sin motivo', NOW() - INTERVAL '9 day'),
(5, 'Recarga errónea', NOW() - INTERVAL '10 day'),
(6, 'Problema con dispositivo móvil', NOW() - INTERVAL '11 day'),
(4, 'Bloqueo automático inesperado', NOW() - INTERVAL '12 day'),
(5, 'Error en sistema', NOW() - INTERVAL '13 day'),
(6, 'Tarjeta no reconocida', NOW() - INTERVAL '14 day'),
(4, 'Reclamo por recarga duplicada', NOW() - INTERVAL '15 day'),
(5, 'Incidencia técnica general', NOW() - INTERVAL '16 day'),
(6, 'Problema con validación', NOW() - INTERVAL '17 day'),
(4, 'Tarjeta no habilitada', NOW() - INTERVAL '18 day'),
(5, 'Recarga fallida', NOW() - INTERVAL '19 day'),
(6, 'Tarjeta bloqueada', NOW() - INTERVAL '20 day');
