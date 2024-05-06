FROM alpine

RUN apk add --no-cache curl jq bash
RUN curl -L https://fly.io/install.sh | FLYCTL_INSTALL=/usr/local sh
COPY entrypoint.sh /entrypoint.sh
COPY fly.toml ./fly.toml

ENTRYPOINT ["/entrypoint.sh"]