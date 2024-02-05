FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2
EXPOSE 80
EXPOSE 443
COPY . /var/www/html
LABEL version="4.0"
CMD ["apachectl", "-D", "FOREGROUND"]