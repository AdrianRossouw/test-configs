FROM busybox
ADD ./logstash.json /opt/logstash/conf.d/logstash.json
VOLUME /opt/logstash/conf.d
ENTRYPOINT sh
