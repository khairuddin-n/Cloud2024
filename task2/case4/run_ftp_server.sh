#!/bin/sh
docker rm -f ftpserver1
docker container run \
    -dit \
    --name ftpserver1 \
    -p 21:21 \
    -p 21100-21110:21100-21110 \  # Open a range of passive ports
    -e FTP_USER=myftpuser \
    -e FTP_PASS=mypassword \
    -v $(pwd)/shared:/home/vsftpd \
    fauria/vsftpd
