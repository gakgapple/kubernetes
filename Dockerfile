FROM registry.cn-hangzhou.aliyuncs.com/aiyong/alpine-jre1.8u192:1.0


COPY logistics-onsconsumer-1.0-SNAPSHOT.jar /srv/logistics.service.aiyongbao.com/logistics-onsconsumer-1.0-SNAPSHOT.jar

COPY tools.jar /jre/lib/tools.jar

COPY as.sh /srv/as.sh
# EXPOSE 8080

VOLUME /srv/logistics.service.aiyongbao.com/logs

WORKDIR "/srv/logistics.service.aiyongbao.com"

ENTRYPOINT ["java", "-XX:MaxDirectMemorySize=1G","-Dfile.encoding=UTF-8","-jar","./logistics-onsconsumer-1.0-SNAPSHOT.jar"]
