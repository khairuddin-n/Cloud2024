#!/bin/bash

# Hapus container lama jika ada
docker rm -f proxy

# Jalankan container Reverse Proxy
docker run -d --name proxy -p 8888:80 myproxy:1.0
