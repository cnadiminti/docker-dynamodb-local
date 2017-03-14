# docker-dynamodb-local

This is the Git repo of the [Docker image](https://hub.docker.com/r/cnadiminti/dynamodb-local) for [Amazon DynamoDB Local](https://aws.amazon.com/dynamodb/).

## What is Amazon Dynamodb Local?

[Amazon DynamoDB](https://aws.amazon.com/dynamodb/) is a fast and flexible NoSQL database service for all applications that need consistent, single-digit millisecond latency at any scale. It is a fully managed cloud database and supports both document and key-value store models.

[The Amazon DynamoDB Local](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.html) (downloadable version of DynamoDB) lets you write applications without accessing the actual Amazon DynamoDB web service. Instead, the database is self-contained on your computer.

## How to use this image?

### Start a Dynamodb Local instance

```console
$ docker run -v "$PWD":/dynamodb_local_db -p 8000:8000 cnadiminti/dynamodb-local
```

This will add your current directory as a volume to the container and publish host port to container port.

## License

- [Amazon DynamoDB Local License Agreement](https://aws.amazon.com/dynamodb-local-license/)

- [OpenJDK License Agreement](http://openjdk.java.net/legal/gplv2+ce.html)

## User Feedback

### Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/cnadiminti/docker-dynamodb-local/issues).

### Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/cnadiminti/docker-dynamodb-local/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
