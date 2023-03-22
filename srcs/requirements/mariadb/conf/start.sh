chown -R mysql /var/lib/mysql
sed -i "s/^bind-address\s*=.*$/#bind-address = 127.0.0.1/" /etc/mysql/mariadb.conf.d/50-server.cnf

#sed -i "s/bind-address\s*=.*/bind-address=0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf
sed -i "s/skip-networking/#skip-networking/g" /etc/mysql/mariadb.conf.d/50-server.cnf
# Configurar puerto en my.cnf
sed -i "s/#\?port\s*=.*/port=3306/" /etc/mysql/mariadb.conf.d/50-server.cnf
/etc/init.d/mysql restart
chmod +x /tmp/setup.sh
service mysql restart
