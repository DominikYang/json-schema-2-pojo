FROM frolvlad/alpine-java:jre8-slim
MAINTAINER Dominikyang
VOLUME /tmp/workdir/docker/output
WORKDIR /tmp/workdir
COPY schema /tmp/workdir/schema
COPY jsonschema2pojo.jar /tmp/workdir/jsonschema2pojo.jar

ENTRYPOINT ["java","-jar","jsonschema2pojo.jar","-srcPath=$1","-outPath=$2","-packageNameVO=$3","-packageNameDTO=$4"]