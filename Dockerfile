FROM aeonlucid/impostor:nightly

# Kopiert den Plugin-Ordner von GitHub direkt in den Server
COPY plugins/ /app/plugins/

EXPOSE 22023/udp
EXPOSE 22023/tcp
EXPOSE 22024/tcp
