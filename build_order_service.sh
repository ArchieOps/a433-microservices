#!/bin/bash

# Script untuk build image docker dari aplikasi order-service
docker build -t archieops/order-service:latest .
# Melihat daftar image di dalam host machine
docker images
# Tag image untuk ghcr.io
docker tag archieops/order-service:latest ghcr.io/archieops/order-service:latest
# Login ke ghcr.io
echo $GHCRTOKEN | docker login ghcr.io --username ArchieOps --password-stdin
# Push image ke ghcr.io
docker push ghcr.io/archieops/order-service:latest