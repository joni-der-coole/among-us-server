FROM aeonlucid/impostor:nightly

# Kopiert den Plugin-Ordner direkt von GitHub in das Server-Verzeichnis
COPY plugins/ /app/plugins/

EXPOSE 22023/udp
EXPOSE 22023/tcp
EXPOSE 22024/tcp
