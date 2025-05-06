# Guía de Despliegue
## 1. Requisitos Previos
Antes de comenzar, asegúrate de tener instalados los siguientes componentes en tu sistema:

- Docker: Para contenerizar la base de datos.
- Docker Compose: Para gestionar los servicios definidos en docker-compose.yml.
- Git: Sistema de control de versiones.

## 2. Configuración Local

### Clonar el Repositorio

```bash
git clone https://github.com/cfernandom/sistema-recargas-viajes-db.git
cd sistema-recargas-viajes-db
```

### Configurar Variables de Entorno

Crea un archivo .env en la raíz del proyecto con las siguientes variables (ajusta los valores según sea necesario):

```ini
POSTGRES_DB=sistema_recargas_viajes
POSTGRES_USER=admin
POSTGRES_PASSWORD=admin123
POSTGRES_LISTEN_PORT=5432
```

### Levantar los Servicios con Docker Compose

Ejecuta el siguiente comando para iniciar el contenedor de PostgreSQL:

```bash
docker-compose up -d
```

Esto creará un contenedor con PostgreSQL configurado según las variables de entorno.

### Verificar el estado del contenedor

Asegúrate de que el contenedor esté corriendo correctamente:

```bash
docker ps
```

Deberías ver un contenedor llamado `db` en ejecución.

## 3. Acceder a la base de datos

Puedes conectarte a la base de datos usando herramientas como `psql` o un cliente gráfico como **pgAdmin**. A continuación se describe el procedimiento para acceder a la base de datos utilizando `psql` dentro del contenedor:

### Acceder a la base de datos con psql dentro del contenedor

1. **Obtener el nombre o ID del contenedor**  
   Si no recuerdas el nombre del contenedor, puedes listar los contenedores en ejecución con el siguiente comando:

   ```bash
   docker ps
   ```

   Busca el contenedor con el nombre db.

2. **Abrir una terminal dentro del contenedor**
    Usa el siguiente comando para acceder al contenedor:
   
    ```bash
    docker exec -it db bash
    ```

3. **Conectarte a la base de datos con psql**
    Una vez dentro del contenedor, ejecuta el siguiente comando para conectarte a la base de datos:

    ```bash
    psql -U ${POSTGRES_USER} -d ${POSTGRES_DB}
    ```

4. **Salir del contenedor**
    Cuando termines de trabajar con la base de datos, puedes salir del contenedor escribiendo:
    
    ```
    exit
    ```
