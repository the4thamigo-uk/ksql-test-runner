FROM confluentinc/cp-ksql-server:5.4.0

WORKDIR /usr/share/java/ksql-server
RUN wget https://repo1.maven.org/maven2/junit/junit/4.12/junit-4.12.jar
RUN wget https://repo1.maven.org/maven2/org/hamcrest/hamcrest-all/1.3/hamcrest-all-1.3.jar
RUN wget https://s3-us-west-2.amazonaws.com/confluent-snapshots/org/apache/kafka/kafka-clients/6.0.0-ccs-SNAPSHOT/kafka-clients-6.0.0-ccs-SNAPSHOT-test.jar

ENV KSQL_LOG4J_OPTS="-Dlog4j.rootLogger=ERROR"

ENTRYPOINT ["/usr/bin/ksql-run-class", "io.confluent.ksql.test.tools.KsqlTestingTool"]
