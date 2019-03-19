FROM docker.elastic.co/beats/filebeat:6.6.1
USER root
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
RUN chown root:filebeat /usr/share/filebeat/filebeat.yml && \
  mkdir -p /usr/share/filebeat/logs/old && \
  mkdir /etc/supervisord.d && \
  yum -y update && \
  yum install -y epel-release logrotate supervisor cronie && \
  yum clean all
COPY supervisord.conf /etc/supervisord.conf
COPY crond.ini /etc/supervisord.d/crond.ini
RUN chmod 666 /etc/supervisord.conf /etc/supervisord.d/*.ini && \
  chmod 755 /usr/bin/supervisord
USER filebeat