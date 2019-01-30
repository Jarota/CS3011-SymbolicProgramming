
allNumbers([]).
allNumbers([H|T]):- number(H), allNumbers(T).

split(N, [H|T], S, B):- member(N, [H|T]), allNumbers([H|T]), split1(N, [H|T], S, B).

split1(_, [], [], []).
split1(N, [H|T], [H|S], B):- H<N, split1(N,T,S,B).
split1(N, [H|T], S, B):- H==N, split1(N,T,S,B).
split1(N, [H|T], S, [H|B]):- H>N, split1(N,T,S,B).

remove(_, [], []).
remove(X, [X|T], L):- remove(X, T, L).
remove(X, [H|T], [H|L]):- X\=H, remove(X, T, L).

permute([], []).
permute(T, L):-	member(H, T),
		member(H, L),
		remove(H, T, R1),
		remove(H, L, R2),
		permute(R1, R2).
