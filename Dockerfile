FROM erlang AS build-env
WORKDIR /build
COPY . .
RUN rebar3 as prod release -o out

FROM erlang:slim
WORKDIR /app
COPY --from=build-env /build/out .
CMD ./hello_erlang/bin/hello_erlang foreground
