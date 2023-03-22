#Choose the image we are going to use.
FROM debian:buster

#First set of instruction executed during the creation of the image,
#we should avoid any kind of input-dependent commands, so -y is a good option.
RUN apt update && apt install -y nginx

#Which port is the container expected to use.
EXPOSE 443

#Erase the duplicate nginx .conf files.
RUN rm -f /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/default

#COPY local configuration files inside the docker container, the container will be static,
#so it's better to copy contents from the Dockerfile.
COPY conf/default.conf	/etc/nginx/conf.d/
COPY tools/openssl.crt	/etc/nginx/
COPY tools/openssl.key	/etc/nginx/

#Execute nginx command with the -g flag for turning off the nginx daemon (easier depuration of nginx).
CMD ["nginx", "-g", "daemon off;"]
