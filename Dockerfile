FROM erlang AS build-env
WORKDIR /build
COPY . .
RUN wget https://erlang.mk/erlang.mk
RUN make
RUN mkdir /app
RUN cp _rel/hello_erlang_release/hello_erlang_release-1.tar.gz /app
WORKDIR /app
RUN tar -xvzf hello_erlang_release-1.tar.gz
RUN rm hello_erlang_release-1.tar.gz


FROM erlang:slim
WORKDIR /app
COPY --from=build-env /app .
CMD ./bin/hello_erlang_release foreground
