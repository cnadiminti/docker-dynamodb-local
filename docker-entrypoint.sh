#!/usr/bin/env bash
set -e

exec java -Djava.library.path=. ${JAVA_OPTS} -jar DynamoDBLocal.jar -port ${DYNAMODB_PORT} "$@"
