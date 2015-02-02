FROM busybox
ADD ./logstash.json /opt/logstash/conf.d/logstash.json
ADD ./logfile /var/log/messages
VOLUME /opt/logstash/conf.d
ENTRYPOINT tail -f /var/log/messages
