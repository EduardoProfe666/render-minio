#!/usr/bin/env sh
# Script de entrada para configurar MinIO

# Ejecuta el comando de entrada original de MinIO con la dirección de la consola y el puerto expuesto
exec docker-entrypoint.sh server --console-address "':9002'" --address "':9000'" /data
