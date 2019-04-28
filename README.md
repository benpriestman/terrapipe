# terrapipe
POC serverless deployment pipeline for Terraform-managed infrastructure in AWS.

## aims

- [x] empty code build project running locally
- [x] install Terraform
- [x] perform a simple Terraform run
- [ ] As simple pipeline that perfroms a Terraform run from code in an S3 bucket.

## testing locally

Local testing uses [aws-codebuild-local](https://hub.docker.com/r/amazon/aws-codebuild-local/), running in docker.

In a shell with appropriate AWS environment variables set (using, for example [aws-vault](https://github.com/99designs/aws-vault)), run:

`make test`

artifacts are output to `/bucket` instead of S3.

### troubleshooting

To troubleshoot a local build, fire up a plain docker image with:

```
docker run -it \
  -e AWS_SESSION_TOKEN \
  -e AWS_DEFAULT_REGION \
  -e AWS_SECRET_ACCESS_KEY \
  -e AWS_REGION \
  -e AWS_ACCESS_KEY_ID \
  -e AWS_SECURITY_TOKEN \
  local/aws-codebuild-ubuntu-standard-minimal bash
```

run your build commands in there.
