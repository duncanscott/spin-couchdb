FROM docker.elastic.co/beats/filebeat:6.6.2
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
COPY logrotate.conf /usr/share/filebeat/logrotate.conf
COPY rotate.sh /usr/share/filebeat/rotate.sh
USER root
RUN yum install logrotate && \
  chown root:filebeat /usr/share/filebeat/filebeat.yml && \
  chown root:filebeat /usr/share/filebeat/logrotate.conf && \
  chown root:filebeat /usr/share/filebeat/rotate.sh && \
  mkdir -p /var/log/filebeat/new && \
  mkdir -p /var/log/filebeat/old && \
  chmod -R 777 /var/log/filebeat && \
  chmod 666 /usr/share/filebeat/filebeat.yml && \
  chmod 666 /usr/share/filebeat/logrotate.conf && \
  chmod 777 /usr/share/filebeat/rotate.sh && \
RUN nohup bash -c "/usr/share/filebeat/rotate.sh &" && sleep 4
USER filebeat