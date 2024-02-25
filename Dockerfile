# Utilizar la imagen oficial de Minio
FROM minio/minio

# Configurar el comando para ejecutar Minio en modo servidor S3 y consola
CMD ["server", "/data", "--address", ":9090", "--console-address", ":9090"]

# Exponer los puertos necesarios para el servicio S3 y la consola
EXPOSE  9090
