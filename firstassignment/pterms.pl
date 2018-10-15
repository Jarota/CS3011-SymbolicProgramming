incr(null, f1(null)).
incr(f0(X), f1(X)).
incr(f1(X), f0(Y)) :- incr(X, Y).

legal(f0(null)).
legal(X) :- legal(Y), incr(Y, X).

incrR(X, Y) :- legal(X), incr(X, Y).

add(f0(null), X, X).
add(X, Y, Z) :- incr(A, X), add(A, Y, B), incr(B, Z).

mult(f1(null), X, X).
mult(X, Y, Z) :- incr(A, X), mult(A, Y, B), add(Y, B, Z).
