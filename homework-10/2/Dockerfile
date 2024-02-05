FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx
EXPOSE 80
EXPOSE 443
COPY . /var/www/html
LABEL version="2.0"
CMD [ "/usr/sbin/nginx", "-g", "daemon off;" ]