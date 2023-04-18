# docker-prowler

Docker image for [prowler](https://github.com/prowler-cloud/prowler/)


## Build

```
docker build -t adioss/prowler .
```

## Usage

### Prerequisites

```
cat .aws/config

[default]
aws_access_key_id = AKIAHEREHEREHHERE
aws_secret_access_key = /fdslkfjsdlfjkzeoifjfcbckjndfkgjfd
region = us-east-1
```

### Basics

```
// help
docker run -ti --rm adioss/prowler -h

// scan all
docker run -ti --rm -v $(pwd):/home/prowler adioss/prowler --verbose
```