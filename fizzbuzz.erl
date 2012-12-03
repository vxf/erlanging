% Vasco Flores 2012

-module(fizzbuzz).
-export([fizzbuzz/1]).

fizzbuzz(0, Acc) -> Acc;
fizzbuzz(N, Acc) when N rem 15 == 0 ->
	fizzbuzz(N -1, ["Fizz Buzz"| Acc]);
fizzbuzz(N, Acc) when N rem 3 == 0 ->
	fizzbuzz(N -1, ["Fizz"| Acc]);	
fizzbuzz(N, Acc) when N rem 5 == 0 ->
	fizzbuzz(N -1, ["Buzz"| Acc]);
fizzbuzz(N, Acc) ->
	fizzbuzz(N -1, [N| Acc]).
fizzbuzz(N) -> fizzbuzz(N, []).


