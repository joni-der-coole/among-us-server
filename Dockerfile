FROM aeonlucid/impostor:nightly

# Erstellt die benötigten Ordner für die Plugins
RUN mkdir -p /app/plugins /app/libraries

# Lädt die neuesten ImpostorHQ-Dateien direkt von GitHub herunter und entpackt sie
ADD https://github.com /tmp/ihq.zip
RUN unzip /tmp/ihq.zip -d /app/

# Schaltet die Ports für das Web-Dashboard und das Spiel frei
EXPOSE 22023/udp
EXPOSE 22023/tcp
EXPOSE 22024/tcp
