FROM alpine

WORKDIR /opt/app

# frp version, eg: 0.28.2
ARG FRP_VERSION
ENV FRP_VERSION ${FRP_VERSION}

RUN wget https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz \
  && tar xf *.gz \
  && mv frp_${FRP_VERSION}_linux_amd64 frp \
  && rm *.gz
