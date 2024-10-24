#!/bin/bash

echo "Yedekleme scripti başlatılıyor..."
BACKUP_DIR=${BACKUP_DIR}
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
echo "Yedekleme dizini: $BACKUP_DIR"
echo "Zaman damgası: $TIMESTAMP"

# Yedekleme oluştur
tar -czvf $BACKUP_DIR/minecraft_backup_$TIMESTAMP.tar.gz /minecraft
