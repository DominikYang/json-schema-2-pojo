#!/bin/sh -l

echo "$1 $2 $3 $4"
java -jar jsonschema2pojo.jar srcPath=$1 outPath=$2 packageNameVO=$3 packageNameDTO=$4