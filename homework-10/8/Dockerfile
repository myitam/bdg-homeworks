FROM centos
RUN sed -i -e "s|mirrorlist=|#mirrorlist=|g" /etc/yum.repos.d/CentOS-*
RUN sed -i -e "s|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g" /etc/yum.repos.d/CentOS-*
RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install redis
EXPOSE 6379
LABEL version="8.0"
CMD ["redis-server"]