# terrapipe
Serverless deployment pipeline for Terraform-managed infrastructure in AWS.

## aims

- [x] empty code build project running locally

## testing locally

Local testing uses [aws-codebuild-local](https://hub.docker.com/r/amazon/aws-codebuild-local/), running in docker.

`make test`

artifacts are output to `/bucket` instead of S3.
