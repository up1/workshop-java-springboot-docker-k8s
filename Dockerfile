FROM openjdk:11.0.14.1-jdk-slim-buster AS builder
WORKDIR build/dependency
ARG APPJAR=target/*.jar
COPY ${APPJAR} app.jar
RUN jar -xf ./app.jar

FROM openjdk:11.0.14.1-jre-slim-buster
VOLUME /tmp
ARG DEPENDENCY=build/dependency
COPY --from=builder ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY --from=builder ${DEPENDENCY}/META-INF /app/META-INF
COPY --from=builder ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","app:app/lib/*","com.example.hello.HelloApplication"]