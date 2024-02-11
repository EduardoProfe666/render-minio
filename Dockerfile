# Utiliza la última imagen oficial de MinIO
FROM minio/minio:latest

# Copia el script de entrada personalizado al contenedor
COPY entrypoint.sh /opt/render/entrypoint.sh

# Hace que el script sea ejecutable
RUN chmod +x /opt/render/entrypoint.sh

# Establece el punto de entrada del contenedor
ENTRYPOINT ["/opt/render/entrypoint.sh"]
