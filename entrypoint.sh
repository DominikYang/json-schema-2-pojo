#!/bin/sh -l

echo "$1 $2 $3 $4"
java -jar json-schema-to-pojo-1.0-SNAPSHOT.jar jsonPath=$1 outPath=$2 packageNameVO=$3 packageNameDTO=$4