FROM minio/minio
EXPOSE  9000  9002
COPY entrypoint.sh /opt/render/entrypoint.sh
ENTRYPOINT ["/opt/render/entrypoint.sh"]
