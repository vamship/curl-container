FROM alpine:3.8

ARG APP_NAME
ARG BUILD_TIMESTAMP
ARG APP_VERSION

# Metadata
LABEL org.label-schema.name=$APP_NAME \
      org.label-schema.version=$APP_VERSION \
      org.label-schema.build-date=$BUILD_TIMESTAMP \
      org.label-schema.url="https://hub.docker.com/r/vamship/curl/" \
      org.label-schema.vcs-url="https://github.com/vamship/curl-container"

RUN apk update \
    && apk add curl

WORKDIR /root

CMD bash
