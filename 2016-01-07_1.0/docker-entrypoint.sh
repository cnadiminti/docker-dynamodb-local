#!/usr/bin/env bash
set -e

exec java -Djava.library.path=/var/dynamodb_local/ ${JAVA_OPTS} -jar /var/dynamodb_local/DynamoDBLocal.jar -port ${DYNAMODB_PORT} "$@"
