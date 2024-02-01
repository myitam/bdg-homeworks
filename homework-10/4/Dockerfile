FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2
EXPOSE 80
EXPOSE 443
COPY . /var/www/
LABEL version="4.0"