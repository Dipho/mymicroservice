#Use java 8 runtime
FROM java:8
VOLUME /home
ADD target/microservice-0.0.1-SNAPSHOT.jar user.jar
RUN bash -c 'touch /user.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /user.jar"]