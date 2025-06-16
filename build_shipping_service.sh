#!/bin/bash

# Script untuk build image docker dari aplikasi shipping-service
docker build -t archieops/shipping-service:latest .
# Melihat daftar image di dalam host machine
docker images
# Tag image untuk ghcr.io
docker tag archieops/shipping-service:latest ghcr.io/archieops/shipping-service:latest
# Login ke ghcr.io
echo $GHCRTOKEN | docker login ghcr.io --username ArchieOps --password-stdin
# Push image ke ghcr.io
docker push ghcr.io/archieops/shipping-service:latest