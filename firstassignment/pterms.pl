pterm(null).
pterm(f0(X)) :- pterm(X).
pterm(f1(X)) :- pterm(X).

same(null, null).
same(f0(X), f0(Y)) :- same(X, Y).
same(f1(X), f1(Y)) :- same(X, Y).

incr(null, f1(null)).
incr(f0(X), f1(Y)) :- same(X, Y).