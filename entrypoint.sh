#!/bin/sh -l

echo "$1 $2 $3 $4"
cd /tmp/workdir
java -jar json-schema-to-pojo-1.0-SNAPSHOT.jar -srcPath=$1 -outPath=$2 -packageNameForVO=$3 -packageNameForVO=$4