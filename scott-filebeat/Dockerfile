FROM docker.elastic.co/beats/filebeat:7.7.1
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN chown root:filebeat /usr/share/filebeat/filebeat.yml && \
  mkdir -p /var/log/app/new && \
  mkdir -p /var/log/app/old && \
  chmod -R 777 /var/log/app && \
  mkdir -p /usr/share/logrotate && \
  chown root:filebeat /usr/share/logrotate  && \
  chmod 777 /usr/share/logrotate
COPY logrotate.conf /usr/share/logrotate/logrotate.conf
RUN chown -R root:filebeat /usr/share/logrotate && \
  chmod 666 /usr/share/logrotate/*
USER filebeat