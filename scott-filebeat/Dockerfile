FROM docker.elastic.co/beats/filebeat:6.6.2
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN chown root:filebeat /usr/share/filebeat/filebeat.yml && \
  mkdir -p /var/log/filebeat/logs && \
  chmod -R 777 /var/log/filebeat/logs
USER filebeat