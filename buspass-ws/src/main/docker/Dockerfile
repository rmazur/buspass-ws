FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD buspass-ws-1.0.0-SNAPSHOT.jar app.jar
ADD docker-entrypoint.sh docker-entrypoint.sh
RUN sh -c 'touch /app.jar'
RUN sh -c 'touch /docker-entrypoint.sh'
RUN sh -c 'chmod +x /docker-entrypoint.sh'
EXPOSE 8080
ENTRYPOINT [ "/docker-entrypoint.sh" ]