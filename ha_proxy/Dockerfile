FROM haproxy:2.4

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY ./TLS/bundle_haproxy.pem /etc/ssl/certs/bundle_haproxy.pem

EXPOSE 80 443
