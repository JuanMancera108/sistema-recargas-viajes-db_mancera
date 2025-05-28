-- Creación tabla auditoria_tarjeta
CREATE TABLE auditoria_tarjeta (
    id SERIAL PRIMARY KEY,
    tarjeta_id INT NOT NULL,
    estado VARCHAR(50),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (tarjeta_id) REFERENCES tarjetas(id)
);

-- Creación tabla promociones
CREATE TABLE promociones (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT
);

-- Creación tabla dispositivos
CREATE TABLE dispositivos (
    id SERIAL PRIMARY KEY,
    tipo VARCHAR(50),
    descripcion TEXT
);

-- Creación tabla incidencias
CREATE TABLE incidencias (
    id SERIAL PRIMARY KEY,
    tarjeta_id INT NOT NULL,
    descripcion TEXT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (tarjeta_id) REFERENCES tarjetas(id)
);

-- Modificaciones a tablas existentes
ALTER TABLE recargas ADD COLUMN promocion_id INT;
ALTER TABLE recargas ADD CONSTRAINT fk_promocion FOREIGN KEY (promocion_id) REFERENCES promociones(id);

ALTER TABLE viajes ADD COLUMN dispositivo_id INT;
ALTER TABLE viajes ADD CONSTRAINT fk_dispositivo FOREIGN KEY (dispositivo_id) REFERENCES dispositivos(id);
