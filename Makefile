
NS = sandiegodata.org
VERSION = latest
REPO = text_class
IMAGE_NAME = $(NS)/$(REPO):$(VERSION) 

NAME = text_class
ENV = 
INSTANCE = default
DOCKER ?= docker
VOLUMES = -v $(shell pwd):/opt/notebooks 
LOCAL_PORT = 7888
PORTS = -p $(LOCAL_PORT):8888



.PHONY: build push shell run start stop restart reload rm rmf release

build:
	$(DOCKER) build -t $(IMAGE_NAME) . -f docker/Dockerfile


shell:
	$(DOCKER) run --rm -ti --name $(NAME)_shell  $(CAP) $(VOLUMES) $(ENV) $(IMAGE_NAME) /bin/bash


jupyter:
	$(DOCKER) run -d --rm --name $(NAME) $(PORTS) $(CAP) $(VOLUMES) $(ENV) $(IMAGE_NAME)
	echo; echo "Open  http://127.0.0.1:$(LOCAL_PORT)/lab in your browser"


rmf:
	$(DOCKER) rm -f $(NAME)

rm:
	$(DOCKER) rm $(NAME)

release: build
	make push -e VERSION=$(VERSION)

default: build