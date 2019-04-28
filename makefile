# makefile for terrapipe
.PHONY: dependencies
dependencies:
	which docker git

.PHONY: build_build_container
build_build_container: dependencies
	docker build -t local/aws-codebuild-ubuntu-standard-minimal .

.PHONY: test_local
test_local: build_build_container
	./codebuild_build.sh -s ./test_build/ -c -i local/aws-codebuild-ubuntu-standard-minimal -a bucket

.PHONY: test
test: test_local