FROM centos
RUN sed -i -e "s|mirrorlist=|#mirrorlist=|g" /etc/yum.repos.d/CentOS-*
RUN sed -i -e "s|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g" /etc/yum.repos.d/CentOS-*
RUN yum install -y httpd
EXPOSE 80
COPY . /var/www/html
LABEL version="5.0"
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]