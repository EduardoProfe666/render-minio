FROM minio/minio
EXPOSE  9000  9002
CMD ["server", "/data", "--console-address", ":9002"]
