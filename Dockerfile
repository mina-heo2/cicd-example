FROM openjdk:17-oracle

VOLUME /tmp

ARG JAR_FILE=/build/libs/*.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["nohup", "java", "-jar", "app.jar", "-dDB_URL=$URL", "-dDB_USERNAME=$USERNAME", "-dDB_PASSWORD=$PASSWORD", "&"]
