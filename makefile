# makefile for terrapipe
dependencies:
	type docker | cat

test: dependencies
	./codebuild_build.sh -i ubuntu -a bucket