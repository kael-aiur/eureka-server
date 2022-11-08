FROM openjdk:8u342-jdk

ARG VER="1.9.3"
ARG APP="eureka-1.9.3"
ARG PORT=8761

ENV APP_HOME=/home/springapps/${APP}
ENV SERVER_PORT=${PORT}
ENV VER=${VER}

WORKDIR ${APP_HOME}
RUN curl "https://github.com/kael-aiur/eureka-server/releases/download/${VER}/eureka-${VER}.jar" -o "eureka-${VER}.jar" -L
EXPOSE ${PORT}


ENTRYPOINT ["sh", "-c", "java -Dserver.port=${SERVER_PORT} -jar eureka-${VER}.jar"]