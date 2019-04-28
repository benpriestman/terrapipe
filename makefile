# makefile for terrapipe
.PHONY: dependencies
dependencies:
	which docker git

.PHONY: build_build_container
build_build_container: dependencies
	docker build -t local/aws-codebuild-ubuntu-standard-minimal .

.PHONY: test
test: build_build_container
	./codebuild_build.sh -c -i local/aws-codebuild-ubuntu-standard-minimal -a bucket