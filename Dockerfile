# Temel imaj olarak openjdk kullan
FROM openjdk:21-jdk-slim

# Çalışma dizinini ayarla
WORKDIR /minecraft

# Gerekli paketleri yükle ve sunucu dosyasını indir
RUN apt-get update && \
    apt-get install -y curl && \
    curl -o minecraft_server.jar https://piston-data.mojang.com/v1/objects/45810d238246d90e811d896f87b14695b7fb6839/server.jar && \
    echo "eula=true" > eula.txt && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# server.properties dosyasını kopyala
COPY games/minecraft/server.properties ./server.properties

# Sunucuyu başlatma komutu
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft_server.jar", "nogui"]
