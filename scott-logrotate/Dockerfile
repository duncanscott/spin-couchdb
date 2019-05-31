FROM gliderlabs/alpine:3.7

# kv.dev-couchdb-pi-jgi-02.log:/opt/couchdb/var/log
# lb.dev-couchdb-pi-jgi-02.old:/var/log/couchdb/old
# lb.dev-couchdb-pi-jgi-02.rot:/usr/share/logrotate

RUN apk --update add logrotate && \
  mkdir -p /usr/share/logrotate && \
  mkdir -p /opt/couchdb/var/log && \
  mkdir -p /var/log/couchdb/old && \
  chmod 777 /usr/share/logrotate && \
  chmod 777 /opt/couchdb/var/log && \
  chmod 777 /var/log/couchdb/old

COPY logrotate.conf /usr/share/logrotate/logrotate.conf

CMD ["/usr/sbin/logrotate", "-v", "-f", "/usr/share/logrotate/logrotate.conf", "-s", "/usr/share/logrotate/logrotate.status"]