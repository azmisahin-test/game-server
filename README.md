# Oyun Sunucusu

Bu depo, Minecraft gibi sunucuları  Docker kullanarak çalıştırmak için gereken dosyaları içerir.

## Kullanım

### Docker İmajı Oluşturma
```bash
docker build -t my-minecraft-server .
```

### Docker Compose ile Sunucuyu Başlatma
```bash
docker-compose up -d
```

### Sunucuyu Durdurma
```
docker-compose down
```

### Port Bilgisi

Sunucu 25565 portu üzerinden erişilebilir.
