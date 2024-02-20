FROM ubuntu
WORKDIR /opt
ADD https://github.com/prometheus/node_exporter/releases/download/v1.7.0/node_exporter-1.7.0.linux-arm64.tar.gz .
RUN apt update && apt install -y tar && \
	tar -xvzf node_exporter-1.7.0.linux-arm64.tar.gz node_exporter-1.7.0.linux-arm64 && \
	rm -rf node_exporter-1.7.0.linux-arm64.tar.gz && \
	cp node_exporter-1.7.0.linux-arm64/node_exporter /usr/bin/ && \
	apt clean
EXPOSE 9100
ENTRYPOINT [ "/usr/bin/node_exporter" ]
