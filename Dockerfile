FROM elixir:1.6.5-alpine
MAINTAINER Ronualdo Maciel <raxmac@gmail.com>

ENV PHOENIX_VERSION 1.3.2

RUN mix local.hex \
        local.rebar \
        --force

RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new-$PHOENIX_VERSION.ez

CMD ["bin/ash"]
