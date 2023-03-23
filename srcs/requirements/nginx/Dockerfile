FROM debian:buster

RUN apt update && apt install -y nginx

EXPOSE 443

RUN rm -f /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/default

COPY conf/default.conf	/etc/nginx/conf.d/
COPY tools/openssl.crt	/etc/nginx/
COPY tools/openssl.key	/etc/nginx/

CMD ["nginx", "-g", "daemon off;"]
