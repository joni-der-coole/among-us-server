FROM aeonlucid/impostor:nightly

# Erstellt die benötigten Ordner für die Plugins
RUN mkdir -p /app/plugins /app/libraries

# Nutzt TAR (welches in Linux eingebaut ist), um das Plugin direkt herunterzuladen und in /app/ zu entpacken
ADD https://github.com /tmp/ihq.tar.gz
RUN tar -xzf /tmp/ihq.tar.gz -C /app/

# Schaltet die Ports für das Web-Dashboard und das Spiel frei
EXPOSE 22023/udp
EXPOSE 22023/tcp
EXPOSE 22024/tcp
