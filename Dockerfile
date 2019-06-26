FROM ubuntu:latest
RUN apt update && apt install apache2 -y && \
ln -sf /dev/stdout /var/log/apache2/access.log && \
ln -sf /dev/stderr /var/log/apache2/error.log && \
echo "ServerName Serveriano" > /etc/apache2/conf-enabled/serverName.conf
COPY holamon.html /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
