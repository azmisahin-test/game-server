# Temel imaj olarak openjdk kullan
FROM openjdk:17-jdk

# Çalışma dizinini ayarla
WORKDIR /minecraft

# Sunucu dosyalarını indirme
RUN apt-get update && \
    apt-get install -y wget && \
    wget https://launcher.mojang.com/v1/objects/0f9bba1b8676d7a4d92d6eeb3ff6b63f0f2e9a88/server.jar && \
    echo "eula=true" > eula.txt

# Sunucuyu başlatma komutu
CMD ["java", "-Xmx2G", "-Xms1G", "-jar", "server.jar", "nogui"]
