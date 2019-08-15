.PHONY: image push pushlatest latest

FRP_VERSION ?= 0.28.2

image:
	docker build --build-arg FRP_VERSION=${FRP_VERSION} -t frp:${FRP_VERSION} .

push:
	docker tag frp:${FRP_VERSION} isayme/frp:${FRP_VERSION}
	docker push isayme/frp:${FRP_VERSION}

pushlatest:
	docker tag frp:${FRP_VERSION} isayme/frp:latest
	docker push isayme/frp:latest

latest: image push pushlatest
	@echo "Done!"