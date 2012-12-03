-module(rpncalc).
-export([rpncalc/1]).

rpncalc('+', [Na,Nb|S]) -> [Na+Nb|S];
rpncalc('-', [Na,Nb|S]) -> [Na-Nb|S];
rpncalc('*', [Na,Nb|S]) -> [Na*Nb|S];
rpncalc('/', [Na,Nb|S]) -> [Na/Nb|S];
rpncalc(N, S) -> [N|S].
rpncalc(L) ->
	[R] = lists:foldl(fun rpncalc/2, [], L),
	R.



