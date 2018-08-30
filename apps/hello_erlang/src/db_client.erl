-module(db_client).

-export([read/1, read/0, insert/1]).

read() ->
    read(#{}).

read(Selector) ->
    {ok, Connection} = create_connection(<<"test">>),
    Collection = <<"test">>,
    {ok, Cursor} = mc_worker_api:find(Connection, Collection, Selector),
    Result = mc_cursor:rest(Cursor),
    mc_cursor:close(Cursor),
    {ok, Result}.

insert(User) ->
    {ok, Connection} = create_connection(<<"test">>),
    Collection = <<"test">>,
    {{true, _}, Result} = mc_worker_api:insert(Connection, Collection, User),
    {ok, Result}.


create_connection(Database) ->
    mc_worker_api:connect([{database, Database}]).
