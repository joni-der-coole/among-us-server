FROM aeonlucid/impostor:nightly

# Wechselt zum Root-Admin, um Schreibrechte zu bekommen
USER root

# Aktualisiert das System und installiert die benötigten Tools
RUN apt-get update && apt-get install -y curl unzip && \
    mkdir -p /app/plugins /app/libraries

# Lädt ImpostorHQ sicher herunter und entpackt es direkt in den Server
RUN curl -L https://github.com -o /tmp/ihq.zip && \
    unzip /tmp/ihq.zip -d /app/ && \
    rm /tmp/ihq.zip

# Wechselt aus Sicherheitsgründen wieder zum normalen Server-Nutzer zurück
USER impostor

# Schaltet die Ports für das Spiel (22023) und das Web-Dashboard (22024) frei
EXPOSE 22023/udp
EXPOSE 22023/tcp
EXPOSE 22024/tcp
