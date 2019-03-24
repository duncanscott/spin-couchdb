FROM gliderlabs/alpine:3.8
#RUN mkdir -p /usr/share/logrotate/
#COPY logrotate.conf /usr/share/logrotate/logrotate.conf
RUN apk --update add logrotate && \
  mkdir -p /usr/share/logrotate/
  mkdir -p /var/log/app/new && \
  mkdir -p /var/log/app/old && \
  chmod -R 777 /var/log/app && \
  chmod 777 /usr/share/logrotate
CMD ["/usr/sbin/logrotate", "-v", "-f", "/usr/share/logrotate/logrotate.conf", "-s", "/usr/share/logrotate/logrotate.status"]