# docker-dynamodb-local

This is the Git repo of the [Docker image](https://hub.docker.com/r/cnadiminti/dynamodb-local) for [Amazon DynamoDB Local](https://aws.amazon.com/dynamodb/).

## Supported tags and respective `Dockerfile` links

-	[`latest` (*latest/Dockerfile*)](https://github.com/cnadiminti/docker-dynamodb-local/blob/master/Dockerfile)
- [`2017-04-22_beta` (*2017-04-22_beta/Dockerfile*)](https://github.com/cnadiminti/docker-dynamodb-local/blob/master/2017-04-22_beta/Dockerfile)
-	[`2017-02-16` (*2017-02-16/Dockerfile*)](https://github.com/cnadiminti/docker-dynamodb-local/blob/master/2017-02-16/Dockerfile)
-	[`2016-05-17` (*2016-05-17/Dockerfile*)](https://github.com/cnadiminti/docker-dynamodb-local/blob/master/2016-05-17/Dockerfile)
- [`2016-04-19` (*2016-04-19/Dockerfile*)](https://github.com/cnadiminti/docker-dynamodb-local/blob/master/2016-04-19/Dockerfile)
- [`2016-03-01` (*2016-03-01/Dockerfile*)](https://github.com/cnadiminti/docker-dynamodb-local/blob/master/2016-03-01/Dockerfile)
- [`2016-01-07_1.0` (*2016-01-07_1.0/Dockerfile*)](https://github.com/cnadiminti/docker-dynamodb-local/blob/master/2016-01-07_1.0/Dockerfile)
- [`2016-01-04_1.0` (*2016-01-04_1.0/Dockerfile*)](https://github.com/cnadiminti/docker-dynamodb-local/blob/master/2016-01-04_1.0/Dockerfile)

## What is Amazon DynamoDB Local?

[Amazon DynamoDB](https://aws.amazon.com/dynamodb/) is a fast and flexible NoSQL database service for all applications that need consistent, single-digit millisecond latency at any scale. It is a fully managed cloud database and supports both document and key-value store models.

[The Amazon DynamoDB Local](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.html) (downloadable version of DynamoDB) lets you write applications without accessing the actual Amazon DynamoDB web service. Instead, the database is self-contained on your computer.

## How to use this image?

### Start a DynamoDB Local instance

```console
$ docker run -v "$PWD":/dynamodb_local_db -p 8000:8000 cnadiminti/dynamodb-local:latest
Initializing DynamoDB Local with the following configuration:
Port:	8000
InMemory:	false
DbPath:	/dynamodb_local_db
SharedDb:	true
shouldDelayTransientStatuses:	false
CorsParams:	*


```

This will add your current directory as a volume to the container and publish host port to container port.

### Verify the DynamoDB Local instance with AWS CLI

Create a Table
```console
$ aws dynamodb create-table --table-name myTable --attribute-definitions AttributeName=id,AttributeType=S --key-schema AttributeName=id,KeyType=HASH --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5 --endpoint-url http://0.0.0.0:8000
```

List the Tables
``` console
$ aws dynamodb list-tables --endpoint-url http://0.0.0.0:8000 --output json
{
    "TableNames": [
        "myTable"
    ]
}
```

For complete list of available commands please refer [AWS DynamoDB CLI](http://docs.aws.amazon.com/cli/latest/reference/dynamodb/).

## Environment Variables

### JAVA_OPTS

This optional environment variable can be used to set JVM options.

Example usage: `docker run -v "$PWD":/dynamodb_local_db -p 8000:8000 -e JAVA_OPTS='-Xmx256m' cnadiminti/dynamodb-local:latest`

### DYNAMODB_PORT

This optional environment variable can be used to overwrite the default port (8000).

Example usage: `docker run -v "$PWD":/dynamodb_local_db -e DYNAMODB_PORT=443 -p 8000:443 cnadiminti/dynamodb-local:latest`

## License

- [Amazon DynamoDB Local License Agreement](https://aws.amazon.com/dynamodb-local-license/)

- [OpenJDK License Agreement](http://openjdk.java.net/legal/gplv2+ce.html)

## User Feedback

### Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/cnadiminti/docker-dynamodb-local/issues).

### Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/cnadiminti/docker-dynamodb-local/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
