.PHONY: latest push

FRP_VERSION := 0.28.2

latest:
	docker build --build-arg FRP_VERSION=${FRP_VERSION} -t frp:${FRP_VERSION} .

push:
	docker tag frp:${FRP_VERSION} isayme/frp:${FRP_VERSION}
	docker push isayme/frp:${FRP_VERSION}

	docker tag frp:${FRP_VERSION} isayme/frp:latest
	docker push isayme/frp:latest
