FROM ubuntu:18.04
RUN apt-get update
RUN apt-get upgrade -y
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install php php-mysql -y
RUN apt-get install apache2 libapache2-mod-php -y
RUN apt-get install mysql-server -y
RUN apt-get update --fix-missing
COPY /src/ /var/www/html/phpvulnbank/