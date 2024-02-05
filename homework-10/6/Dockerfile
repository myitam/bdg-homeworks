FROM ubuntu
RUN apt-get update
RUN apt-get install -y redis-server
EXPOSE 6379
LABEL version="6.0"
CMD ["/usr/bin/redis-server"]