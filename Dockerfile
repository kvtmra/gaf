FROM teddysun/xray:latest

# Web kılıfı için caddy sunucusu ekle
RUN apk add --no-cache caddy

WORKDIR /etc/xray

COPY config.json /etc/xray/config.json
COPY index.html /var/www/html/index.html

EXPOSE 8080

# Caddy ile 8080 portunda kök dizine index.html sun, /ray yolunu Xray'e pasla
CMD ["sh", "-c", "xray -config /etc/xray/config.json"]
