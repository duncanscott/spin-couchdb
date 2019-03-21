FROM docker.elastic.co/beats/filebeat:6.6.2
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN chown root:filebeat /usr/share/filebeat/filebeat.yml && \
  mkdir -p /usr/share/filebeat/logs/old && \
  chmod -R 777 /usr/share/filebeat/logs
USER filebeat
