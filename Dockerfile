FROM registry.cn-hangzhou.aliyuncs.com/aiyong/alpine-jre1.8u192:1.0

COPY simple-maven-project-with-tests-1.0-SNAPSHOT.jar /srv/logistics.service.aiyongbao.com/test-0.0.1-SNAPSHOT.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","/srv/logistics.service.aiyongbao.com/test-0.0.1-SNAPSHOT.jar"]
