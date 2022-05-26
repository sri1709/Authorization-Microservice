FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 80
ADD target/*.jar auth-service.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /auth-service.jar" ]