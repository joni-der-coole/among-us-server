FROM dimaguy/impostorhq:latest

# Schaltet die Ports für das Spiel und das Web-Dashboard frei
EXPOSE 22023/udp
EXPOSE 22023/tcp
EXPOSE 22024/tcp
