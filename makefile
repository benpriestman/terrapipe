# makefile for terrapipe
dependencies:
	which docker git

# Experimental: build a local version of an AWS curated build container image
build_build_container: dependencies
	docker build github.com/aws/aws-codebuild-docker-images.git#:ubuntu/standard/1.0

test: dependencies
	./codebuild_build.sh -i ubuntu -a bucket