#!/bin/bash

# Yedekleme dizini
BACKUP_DIR="/games/minecraft/backup"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Yedekleme oluştur
tar -czvf $BACKUP_DIR/minecraft_backup_$TIMESTAMP.tar.gz /minecraft
