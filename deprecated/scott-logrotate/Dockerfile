FROM gliderlabs/alpine:3.8
ADD logrotate.conf /logrotate.conf
RUN apk --update add logrotate && \
  mkdir -p /usr/share/filebeat/logs/old && \
  mkdir -p /usr/share/logrotate/ && \
  mv /logrotate.conf /usr/share/logrotate/ && \
  chmod -R 777 /usr/share/filebeat && \
  chmod 777 /usr/share/logrotate && \
  chmod 666 /usr/share/logrotate/*
CMD ["/usr/sbin/logrotate", "-v", "-f", "/usr/share/logrotate/logrotate.conf"]