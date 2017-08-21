.PHONY: build tests all

DOCKER_IMAGE_NAME=amontaigu/terraform
TERRAFORM_VERSION="0.10.2"

all: build test

build:
	docker build --cache-from=amontaigu_terraform --tag $(DOCKER_IMAGE_NAME) .

tests:
	docker run \
		-v $$(which docker):$$(which docker) \
		-v /var/run/docker.sock:/docker.sock \
		-v $(CURDIR):/app \
		-e DOCKER_HOST_CURDIR=$(CURDIR) \
		-e DOCKER_HOST="unix:///docker.sock" \
		-e DOCKER_IMAGE_NAME=$(DOCKER_IMAGE_NAME) \
		-e TERRAFORM_VERSION=$(TERRAFORM_VERSION) \
		dduportal/bats:0.4.0 \
			/app/tests/
