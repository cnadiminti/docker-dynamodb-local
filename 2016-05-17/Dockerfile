FROM openjdk:8-jre

MAINTAINER cnadiminti

RUN mkdir /var/dynamodb_local

WORKDIR /var/dynamodb_local

VOLUME ["/dynamodb_local_db"]

ENV DYNAMODB_VERSION=2016-05-17

ENV DYNAMODB_PORT=8000

ENV JAVA_OPTS=

RUN curl -sL -O https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_${DYNAMODB_VERSION}.tar.gz && \
    curl -sL -O https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_${DYNAMODB_VERSION}.tar.gz.sha256 && \
    sha256sum -c dynamodb_local_${DYNAMODB_VERSION}.tar.gz.sha256 && \
    tar zxvf dynamodb_local_${DYNAMODB_VERSION}.tar.gz && \
    rm dynamodb_local_${DYNAMODB_VERSION}.tar.gz dynamodb_local_${DYNAMODB_VERSION}.tar.gz.sha256

COPY ./docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 8000

CMD ["--sharedDb", "-dbPath", "/dynamodb_local_db"]
