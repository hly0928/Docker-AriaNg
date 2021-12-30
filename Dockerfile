FROM alpine AS builder
ARG ARIANG_VERSION=1.2.3
RUN apk add --update wget unzip && \
    mkdir /aria && \
    cd /aria && \
    wget -q -O AriaNg.zip https://github.com/mayswind/AriaNg/releases/download/${ARIANG_VERSION}/AriaNg-${ARIANG_VERSION}.zip && \
    unzip AriaNg.zip && \
    rm -f AriaNg.zip

FROM nginx:stable-alpine
LABEL maintainer="hly0928 <i@hly0928.com>"
COPY --from=builder /aria/ /usr/share/nginx/html/
EXPOSE 80
