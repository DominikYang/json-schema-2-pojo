FROM openjdk:8-jre-alpine
MAINTAINER Dominikyang
VOLUME /tmp/workdir/docker/output
WORKDIR /tmp/workdir
COPY json-schema-to-pojo-1.0-SNAPSHOT.jar /tmp/workdir/jsonschema2pojo-1.0-SNAPSHOT.jar
COPY entrypoint.sh /tmp/workdir/entrypoint.sh

ENTRYPOINT ["java","-jar","json-schema-to-pojo-1.0-SNAPSHOT.jar","-srcPath=$1","-outPath=$2","-packageNameForVO=$3","-packageNameForVO=$4"]