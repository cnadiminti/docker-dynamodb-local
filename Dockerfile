FROM openjdk:8-jre

MAINTAINER cnadiminti

RUN mkdir /var/dynamodb_local

WORKDIR /var/dynamodb_local

VOLUME ["/dynamodb_local_db"]

ENV DYNAMODB_VERSION=latest

RUN curl -O https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_${DYNAMODB_VERSION}.tar.gz && \
    tar zxvf dynamodb_local_${DYNAMODB_VERSION}.tar.gz && \
    rm dynamodb_local_${DYNAMODB_VERSION}.tar.gz

EXPOSE 8000

ENTRYPOINT ["java", "-Djava.library.path=.", "-jar", "DynamoDBLocal.jar",  "--sharedDb", "-dbPath", "/dynamodb_local_db", "-port", "8000"]
