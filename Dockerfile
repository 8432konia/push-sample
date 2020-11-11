FROM nginx:1.18-alpine

WORKDIR /work

SHELL ["/bin/ash", "-oeux", "pipefail", "-c"]

ENV TZ=UTC

RUN apk update && \
  apk add --update --no-cache --virtual=.build-dependencies g++

# nginx config file
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY index.html /work/index.html
