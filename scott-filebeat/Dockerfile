FROM docker.elastic.co/beats/filebeat:6.6.1
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN chown root:filebeat /usr/share/filebeat/filebeat.yml && \
  mkdir -p /var/log/filebeat/logs/old && \
  chmod -R 777 /var/log/filebeat/logs
USER filebeat