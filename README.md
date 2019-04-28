# terrapipe
POC serverless deployment pipeline for Terraform-managed infrastructure in AWS.

## aims

- [x] empty code build project running locally
- [x] install Terraform
- [ ] perform a simple Terraform run
- [ ] make local codebuild use an AWS curated image
- [ ] remove apt install commands from buildspec

## testing locally

Local testing uses [aws-codebuild-local](https://hub.docker.com/r/amazon/aws-codebuild-local/), running in docker.

`make test`

artifacts are output to `/bucket` instead of S3.

### troubleshooting

To troubleshoot a local build, fire up a plain docker image with:

`docker run -it ubuntu bash`

run your build commands in there.
