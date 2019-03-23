FROM gliderlabs/alpine:3.8
RUN mkdir -p /usr/share/logrotate/
COPY logrotate.conf /usr/share/logrotate/logrotate.conf
RUN apk --update add logrotate && \
  mkdir -p /var/log/filebeat/new && \
  mkdir -p /var/log/filebeat/old && \
  chmod -R 777 /var/log/filebeat && \
  chmod 777 /usr/share/logrotate && \
  chmod 666 /usr/share/logrotate/*
CMD ["/usr/sbin/logrotate", "-v", "-f", "/usr/share/logrotate/logrotate.conf", "-s", "/usr/share/logrotate/logrotate.status"]