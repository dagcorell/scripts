#!/bin/bash
# Create xml snippet for mvn dependency as string
# Example usage: mvndep.sh org.apache.jena:jena-arq:jar:2.9.4:compile
# Dag Corell 2017

IN=$1
arrIN=(${IN//:/ })

 
echo "<dependency>"
echo "    <groupId>${arrIN[0]}</groupId>"
echo "    <artifactId>${arrIN[1]}</artifactId>"
echo "    <version>${arrIN[3]}</version>"
echo "    <type>${arrIN[2]}</type>"
echo "    <scope>${arrIN[4]}</scope>"
echo " </dependency>"




