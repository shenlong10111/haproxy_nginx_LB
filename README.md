# HAProxy - LB with two WebApps (Nginx)

```bash
docker-compose up -d
```

Web browser - localhost:8080

.github/workflows/vizlib-ci.yml - build and push three images to DockerHub:
```bash
shenlong23/lb_nginx1:1.0
shenlong23/lb_nginx2:1.0
shenlong23/lb_haproxy:1.1
```

lb_haproxy is also available with TLS - shenlong23/lb_haproxy:tls (localhost:443).
This image is related to commented config (ha_proxy/haproxy.cfg; lines 7-8, 25-26):
```bash
#ssl-default-bind-ciphers ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES256-SHA384:ECDHE-ECDSA-AES128-SHA256:ECDHE-RSA-AES128-SHA256
#ssl-default-bind-options ssl-min-ver TLSv1.2 no-tls-tickets

#bind *:443 ssl crt /etc/ssl/certs/bundle_haproxy.pem
#http-request redirect scheme https unless { ssl_fc }
```

```bash
docker-compose stop
docker-compose rm
```