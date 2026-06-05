-module(gen_server).

-export([start/0, loop/0]).

start() ->
    io:format("start ~p~n", [self()]),
    spawn(fun loop/0).

loop() ->
    receive
        Msg -> io:format("~p receive ~p~n", [self(), Msg]),
               loop()
    end.