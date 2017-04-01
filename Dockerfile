FROM nventiveux/docker-alpine-rpi
MAINTAINER Peter Lavelle <peter@solderintheveins.co.uk>
RUN apk update && \
apk upgrade && \
apk add bash python3 python3-dev py3-cffi libffi libffi-dev gcc make libc6-compat libc-dev openssl-dev libgc++ g++ libconfig++ cmake && \
pip3 install --no-cache-dir --upgrade pip && \
pip3 install mitmproxy --no-cache-dir --upgrade && \
rm -rf /var/cache/apk/
WORKDIR /root
EXPOSE 8080
ENTRYPOINT ["mitmproxy"] 
