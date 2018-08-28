-module(manga_handler).
-behavior(cowboy_handler).

-export([init/2]).

init(Req0=#{method := <<"POST">>}, State) ->
	Req = cowboy_req:reply(200,
		#{<<"content-type">> => <<"application/json">>},
		<<"{ \"Method\": \"POST\" }">>,
		Req0),
	{ok, Req, State};


init(Req0=#{method := <<"GET">>}, State) ->
	Req = cowboy_req:reply(200,
		#{<<"content-type">> => <<"text/plain">>},
		<<"Method: Get">>,
		Req0),
	{ok, Req, State};


init(Req0, State) ->
	Req = cowboy_req:reply(200,
		#{<<"content-type">> => <<"text/plain">>},
		<<"Hello Joao Pedro!">>,
		Req0),
	{ok, Req, State}.


