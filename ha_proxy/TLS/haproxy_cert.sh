#!/bin/bash

openssl genrsa -out haproxy.key 1024
openssl req -new -key haproxy.key -out haproxy.csr -subj "/C=PL/ST=POMORSKIE/L=GDANSK/O=localhost Security/OU=localhost Department/CN=localhost" -passout pass:"localhost"
openssl x509 -req -days 365 -in haproxy.csr -signkey haproxy.key -out haproxy.crt -passin pass:"localhost"
cat haproxy.crt haproxy.key | tee bundle_haproxy.pem
