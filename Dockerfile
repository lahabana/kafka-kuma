FROM ubuntu as builder

ADD https://dlcdn.apache.org/kafka/3.1.0/kafka_2.13-3.1.0.tgz /tmp
RUN tar -C /tmp -xvf /tmp/kafka_2.13-3.1.0.tgz

FROM openjdk:19-jdk
COPY --from=builder /tmp/kafka_2.13-3.1.0 /var/kafka/
RUN chmod -R o+rx /var/kafka

CMD /var/kafka/bin/kafka-server-start.sh /var/kafka/config/server.properties
