FROM elixir:1.9.0-alpine
MAINTAINER Ronualdo Maciel <raxmac@gmail.com>

RUN apk add --no-cache inotify-tools

ENV PHOENIX_VERSION 1.4.8

RUN mix local.hex --force &&\
    mix local.rebar --force &&\
    mix archive.install hex phx_new 1.4.8 --force

CMD ["bin/ash"]
