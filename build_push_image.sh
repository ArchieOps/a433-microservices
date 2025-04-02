#!/bin/bash

# Membuat image menggunakan dockerfile dengan nama image item-app dan tag v1
docker build -t item-app:v1 .
# Melihat daftar image di dalam host machine
docker images
# Mengubah nama dan tag image ke sebelum di push ke ghcr.io dengan nama item-app:v1
docker tag item-app:v1 ghcr.io/archieops/item-app:v1
# Login ke ghcr.io
echo $GHCRTOKEN | docker login ghcr.io --username ArchieOps --password-stdin
# Push image ke ghcr.io
docker push ghcr.io/archieops/item-app:v1
