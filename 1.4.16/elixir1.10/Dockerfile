FROM elixir:1.10.2-alpine
MAINTAINER Ronualdo Maciel <raxmac@gmail.com>

RUN apk add --no-cache inotify-tools

ENV PHOENIX_VERSION 1.4.16

RUN mix local.hex --force &&\
    mix local.rebar --force &&\
    mix archive.install hex phx_new $PHOENIX_VERSION --force

CMD ["bin/ash"]
