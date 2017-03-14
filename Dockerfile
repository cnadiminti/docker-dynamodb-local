FROM java:8-jre

MAINTAINER cnadiminti

RUN mkdir /var/dynamodb_local

WORKDIR /var/dynamodb_local

RUN curl -O https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz && \
    tar zxvf dynamodb_local_latest.tar.gz && \
    rm dynamodb_local_latest.tar.gz

EXPOSE 8000

ENTRYPOINT ["java", "-Djava.library.path=.", "-jar", "DynamoDBLocal.jar",  "--sharedDb", "-port", "8000"]
