DOCKER_IMG = packetferret/cocabona
DOCKER_TAG = 0.1.0
VOLUME_PATH = C:\\Users\\calvi\\development\\packetferret\\cocabona

build:
	docker build -t $(DOCKER_IMG):$(DOCKER_TAG) docker/

run:
	docker run -it \
	-v $(PWD):/home/tmp/files \
	-w /home/tmp/files \
	$(DOCKER_IMG):$(DOCKER_TAG) /usr/bin/zsh