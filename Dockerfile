FROM minio/minio

# Configura las variables de entorno necesarias para MinIO
ENV MINIO_ROOT_USER=minioadmin \
    MINIO_ROOT_PASSWORD=minioadmin \
    MINIO_PROMETHEUS_AUTH_TYPE=public \
    MINIO_PROMETHEUS_ENABLED=true \
    MINIO_HTTP_TRACE=false \
    MINIO_HTTP_TRACE_LOG_OUTPUT=stdout

# Ejecuta el comando de MinIO con la opción de dirección de consola para habilitar la interfaz web
ENTRYPOINT ["minio", "server", "/data", "--console-address", ":9002"]
