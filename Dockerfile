FROM frolvlad/alpine-java:jre8-slim
MAINTAINER Dominikyang
VOLUME /tmp/workdir/docker/output
WORKDIR /tmp/workdir
COPY json-schema-to-pojo-1.0-SNAPSHOT.jar /tmp/workdir/json-schema-to-pojo-1.0-SNAPSHOT.jar

ENTRYPOINT ["java","-cp","json-schema-to-pojo-1.0-SNAPSHOT.jar","com.dominikyang.main.Main","-srcPath=$1","-outPath=$2","-packageNameForVO=$3","-packageNameForVO=$4"]