## Vamshi Ponnapalli
## 3/13/2019
## Basic container that includes curl
ARG BASE_IMAGE

## ---- Main Image ---
FROM ${BASE_IMAGE}

ARG APP_NAME
ARG APP_DESCRIPTION
ARG APP_VERSION
ARG BUILD_TIMESTAMP
ARG ARCH_SUFFIX

# Metadata
LABEL org.label-schema.name=${APP_NAME} \
      org.label-schema.description=${APP_DESCRIPTION} \
      org.label-schema.version=${APP_VERSION} \
      org.label-schema.build-date=${BUILD_TIMESTAMP} \
      org.label-schema.vcs-url="https://github.com/vamship/curl-container" \
      org.label-schema.url="https://hub.docker.com/r/vamship/curl${ARCH_SUFFIX}"

RUN apk update \
    && apk add curl bash

WORKDIR /root

CMD bash
