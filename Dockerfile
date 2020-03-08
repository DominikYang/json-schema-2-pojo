FROM frolvlad/alpine-java:jre8-slim
MAINTAINER Dominikyang
VOLUME /tmp/workdir/docker/output
WORKDIR /tmp/workdir
COPY jsonschema2pojo.jar /tmp/workdir/jsonschema2pojo.jar

ENTRYPOINT ["java","-cp","jsonschema2pojo.jar"," main.java.com.dominikyang.main.Main","-srcPath=$1","-outPath=$2","-packageNameForVO=$3","-packageNameForVO=$4"]