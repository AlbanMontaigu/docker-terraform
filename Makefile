.PHONY: build tests all

DOCKER_IMAGE_NAME=amontaigu/terraform
TERRAFORM_VERSION="0.9.2"

all: build test

build:
	docker build --tag $(DOCKER_IMAGE_NAME) .

tests:
	docker run \
		-v $$(which docker):$$(which docker) \
		-v /var/run/docker.sock:/docker.sock \
		-v $(CURDIR):/app \
		-w="/app/tests" \
		-e DOCKER_HOST_CURDIR=$(CURDIR) \
		-e DOCKER_HOST="unix:///docker.sock" \
		-e DOCKER_IMAGE_NAME=$(DOCKER_IMAGE_NAME) \
		-e TERRAFORM_VERSION=$(TERRAFORM_VERSION) \
		dduportal/bats:0.4.0 \
			/app/tests/
