#  Hello Erlang

This project is just a simple example of a [Erlang](https://www.erlang.org/) server using [Cowboy](https://github.com/ninenines/cowboy).

### Prerequisites

This project requires:
* **[Erl](http://erlang.org/doc/installation_guide/users_guide.html)**
* **[Rebar3](https://www.rebar3.org/)**
### Installing and Running

Rebar is a build tool for Erlang projects.

To run the application:
```
$ rebar3 shell
```

### Docker

If you prefer running your applications with Docker, just build the image with:
```
$ docker build -t hello_erlang .
```

And run the container:
```
 $ docker run --name hello -d -p 8080:8080 hello_erlang
```

Access **[http://localhost:8080/hello](http://localhost:8080/hello)** to see it running.
