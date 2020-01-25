FROM alpine AS builder
ARG ariang_version=1.1.4
RUN apk add --update wget unzip && \
    mkdir /aria && \
    cd /aria && \
    wget -q -O AriaNg.zip https://github.com/mayswind/AriaNg/releases/download/${ariang_version}/AriaNg-${ariang_version}.zip && \
    unzip AriaNg.zip && \
    rm -f AriaNg.zip

FROM nginx
LABEL maintainer="hly0928 <i@hly0928.com>"
COPY --from=builder /aria/ /usr/share/nginx/html/
EXPOSE 80