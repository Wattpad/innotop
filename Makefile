IMAGE=docker-registry.wattpad.com/wattpad/innotop:latest

build:
	docker build -t $(IMAGE) .

push: build
	docker push $(IMAGE)

run: build
	docker run -ti --rm -v $(PWD):/innotop $(IMAGE) bash
