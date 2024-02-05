FROM centos
RUN yum update
RUN yum install -y nginx
EXPOSE 80
EXPOSE 443
COPY . /var/www/html
LABEL version="3.0"
CMD [ "/usr/sbin/nginx", "-g", "daemon off;" ]