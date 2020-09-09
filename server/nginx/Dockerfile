FROM node:14.2-alpine as node14
FROM nginx:1.18-alpine
SHELL ["/bin/ash", "-oeux", "pipefail", "-c"]

ENV TZ=UTC

RUN apk update && \
  apk add --update --no-cache --virtual=.build-dependencies g++

# node
COPY --from=node14 /usr/local/bin /usr/local/bin

# npm
COPY --from=node14 /usr/local/lib /usr/local/lib
# yarn
COPY --from=node14 /opt /opt

# nginx config file
COPY ./default.conf /etc/nginx/conf.d/default.conf

WORKDIR /storage
