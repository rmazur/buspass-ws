#!/bin/sh

set -e

JAVA_OPTS=${JAVA_OPTS:="-Xmx256m"}

exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar -jar /app.jar
