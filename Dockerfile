
FROM openjdk:8-jdk-alpine
##注意，此处是将编译好的jar整个移动
ADD md_blockchain-0.0.1-SNAPSHOT-b5.jar /work/app.jar
VOLUME /work
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV TZ Asia/Shanghai

EXPOSE 8080

ENTRYPOINT ["java","-jar","/work/app.jar"]