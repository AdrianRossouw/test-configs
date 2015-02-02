SHA = $(shell git rev-parse --short HEAD)
DOCKERNAME = configs:$(SHA)
SERVICE = configs

.PHONY: clean build push logs deploy

all: build push deploy

build:
	docker build -t $(DOCKERNAME) .

push:
	echo empty

deploy:
	echo empty

run:
	docker run -d $(DOCKERNAME) > .pidfile

kill:
	docker kill `cat .pidfile`

logs:
	docker logs `cat .pidfile`
