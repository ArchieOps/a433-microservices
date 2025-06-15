#!/bin/bash

# Membuat image menggunakan dockerfile dengan nama image <username-docker>/karsajobs:latest
docker build -t archieops/karsajobs-ui:latest .
# Melihat daftar image di dalam host machine
docker images
# Mengubah nama dan tag image ke sebelum di push ke ghcr.io dengan nama item-app:v1
docker tag archieops/karsajobs-ui:latest ghcr.io/archieops/karsajobs-ui:latest
# Login ke ghcr.io
echo $GHCRTOKEN | docker login ghcr.io --username ArchieOps --password-stdin
# Push image ke ghcr.io
docker push ghcr.io/archieops/karsajobs-ui:latest