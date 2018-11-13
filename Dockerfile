FROM registry.cn-hangzhou.aliyuncs.com/aiyong/alpine-jre1.8u192:1.0


COPY aiyong-java-project.jar /srv/{projectName}.service.aiyongbao.com/{projectName}-{version}-SNAPSHOT.jar


VOLUME /srv/{projectName}.service.aiyongbao.com/logs

WORKDIR "/srv/{projectName}.service.aiyongbao.com"

ENTRYPOINT ["java", "-XX:MaxDirectMemorySize=1G","-Dfile.encoding=UTF-8","-jar","./{projectName}-{version}-SNAPSHOT.jar"]
