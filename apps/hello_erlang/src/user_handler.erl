-module(user_handler).

-behaviour(cowboy_rest).

-export([init/2]).

init(Req0 = #{method := <<"GET">>}, State) ->

    Req = cowboy_req:reply(200,
        #{<<"content-type">> => <<"application/json">>},
        <<"{ \"ok\" : \"GET User\" }">>,
        Req0),
    {ok, Req, State}.
