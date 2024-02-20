FROM ubuntu
RUN apt update && apt install -y wget apt-transport-https software-properties-common
RUN wget -q -O - https://packages.grafana.com/gpg.key | apt-key add -  
RUN echo "deb https://packages.grafana.com/oss/deb stable main" | tee -a /etc/apt/sources.list.d/grafana.list 
RUN apt update && apt install -y grafana
COPY datasources.yaml /etc/grafana/provisioning/datasources/
EXPOSE 3000
ENTRYPOINT  [ "grafana-server" ]
CMD ["--config=/etc/grafana/grafana.ini" , "--homepath=/usr/share/grafana"]
