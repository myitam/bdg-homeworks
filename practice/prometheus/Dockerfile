FROM ubuntu
RUN apt update && apt install -y wget && apt install -y tar
COPY . /var/tmp/
WORKDIR /var/tmp/
RUN /bin/bash -c '/var/tmp/prometheus.sh'
EXPOSE 9090
ENTRYPOINT  [ "/usr/local/bin/prometheus" ]
CMD ["--storage.tsdb.path=/prometheus"]