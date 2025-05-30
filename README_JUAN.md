Taller Final - Programación de Bases de Datos
Descripción General
Este proyecto implementa mejoras sobre la base de datos del sistema de viajes y recargas, con el fin de validar los conocimientos adquiridos en el curso de programación de bases de datos. Se trabaja sobre temas de diseño, administración de tablas y consultas SQL complejas.
Las mejoras implementadas son:
1. Auditoría del estado de las tarjetas: Registro detallado de cada cambio de estado de las tarjetas para auditar su historial y detectar modificaciones.
2. Promociones aplicadas en recargas: Registro y consulta de promociones aplicadas a recargas para análisis comercial y mejor experiencia de usuario.
3. Registro de dispositivos de validación: Almacenamiento de los dispositivos que validan cada viaje para trazabilidad y generación de estadísticas.
4. Mejora adicional - Gestión de usuarios y roles: Se añadió una tabla para gestionar usuarios del sistema con sus roles, facilitando control de accesos y auditoría.

Estructura del Repositorio

taller-final-programacion-bd/
│
├── scripts/
│   ├── 01_creacion_tablas.sql
│   ├── 02_insercion_datos.sql
│   ├── 03_consultas.sql
│
├── diagramas/
│   └── er_diagram_mermaid.txt
│
└── README.md

Instrucciones para la Ejecución

Para reproducir el sistema con las mejoras implementadas, ejecutar los scripts en el siguiente orden:
1. 01_creacion_tablas.sql: Modificaciones y creación de nuevas tablas.
2. 02_insercion_datos.sql: Inserción de datos de prueba (más de 100 registros).
3. 03_consultas.sql: Consultas solicitadas para validar cada mejora.

Resumen de Tablas Modificadas y Nuevas
Tabla	Propósito	Campos Clave
AUDITORIA_TARJETA	Registrar cambios de estado de tarjetas	id_auditoria (PK), id_tarjeta (FK)
PROMOCION	Almacenar promociones para recargas	id_promocion (PK)
RECARGA	Registrar recargas con promociones	id_recarga (PK), id_promocion (FK)
DISPOSITIVO	Registrar dispositivos que validan viajes	id_dispositivo (PK)
VIAJE	Registrar viajes y dispositivos asociados	id_viaje (PK), id_dispositivo (FK)
USUARIO	Registrar usuarios del sistema y sus roles	id_usuario (PK)


Datos Insertados
Se incluyó una carga de datos con al menos 100 registros en las nuevas tablas para permitir la validación y prueba de las consultas.
Consultas Desarrolladas

- Auditoría tarjetas:
  - Cambios de estado por mes en el último año.
  - Top 5 tarjetas con más cambios.

- Promociones en recargas:
  - Recargas con descripción de promoción aplicada.
  - Monto total recargado por tipo de promoción en últimos 3 meses.
  - Promociones que contienen "bonus" en el nombre.

- Dispositivos de validación:
  - Viajes sin registro de validación.
  - Validaciones hechas por dispositivos móviles en abril 2025.
  - Dispositivo con mayor cantidad de validaciones.

- Mejora adicional (Usuarios):
  - Listar usuarios por rol.
  - Consultar recargas validadas por usuarios específicos (JOIN).
  - Listar viajes, validadores y usuarios que validaron (JOIN).
