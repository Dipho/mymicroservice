#Use java 8 runtime
FROM java:8
VOLUME /tmp
ADD target/microservice-0.0.1-SNAPSHOT.jar user.jar
ADD FunctionalTests/FunctionalTests/target/FunctionalTests-1-jar-with-dependencies.jar tests.jar
#ADD target/dependency-jars dependency-jars
RUN bash -c 'touch /user.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /user.jar"]