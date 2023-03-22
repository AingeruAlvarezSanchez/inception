FROM debian:buster

COPY ./tools/setup.sh /tmp/
COPY ./conf/start.sh /tmp/

RUN apt-get update && apt-get install -y mariadb-server && service mysql start && chmod +x /tmp/setup.sh && chmod +x /tmp/start.sh && ./tmp/start.sh

CMD ["sh","-c", "./tmp/setup.sh > /tmp/setup.sql && mysqld --init-file=/tmp/setup.sql"]
