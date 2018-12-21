IMAGE_NAME ?= cyberproject/nats-streaming-console
IMAGE_TAG ?= latest

.PHONY: all build release

build:
	docker build --build-arg IMAGE_TAG=$(IMAGE_TAG) -t $(IMAGE_NAME):$(IMAGE_TAG) .

release:
	docker push $(IMAGE_NAME):$(IMAGE_TAG)

all: build release
	@echo 'Finished ...'
