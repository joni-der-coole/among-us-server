FROM aeonlucid/impostor:nightly

# Erstellt die nötigen leeren Ordner, damit der Server sauber startet
RUN mkdir -p /app/plugins /app/libraries

# Wir nutzen curl, um die echte Datei sicher herunterzuladen
RUN apt-get update && apt-get install -y curl unzip && \
    curl -L https://github.com -o /tmp/ihq.zip && \
    unzip /tmp/ihq.zip -d /app/ && \
    rm /tmp/ihq.zip && \
    apt-get remove -y curl unzip && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

# Schaltet die Ports für das Spiel und das Dashboard frei
EXPOSE 22023/udp
EXPOSE 22023/tcp
EXPOSE 22024/tcp
