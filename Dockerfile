FROM aeonlucid/impostor:nightly

# Kopiert die Web-Dateien direkt aus deinem GitHub in den Server
COPY plugins/ /app/plugins/

EXPOSE 22023/udp
EXPOSE 22023/tcp
EXPOSE 22024/tcp
