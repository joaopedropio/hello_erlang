#  Hello Erlang

This project is just a simple example of a [Erlang](https://www.erlang.org/) server using [Cowboy](https://github.com/ninenines/cowboy).

### Prerequisites

This project only requires Erlang:
* **[Erl](http://erlang.org/doc/installation_guide/users_guide.html)**
### Installing and Running

Erlang.mk is a build tool for Erlang projects

To run this project is necessary to download Erlang.mk:
```
$ wget https://erlang.mk/erlang.mk
```

Run the following command to build the application:
```
$ make
```

And finally, run the application:
```
$ make run
```

### Docker

If you prefer running your applications with Docker, just build the images with:
```
docker build -t hello_erlang .

```

And run the container:
```
 docker run --name he -d -p 8080:8080 hello_erlang
```

Access **[http://localhost:8080/hello](http://localhost:8080/hello)** to see it running.
