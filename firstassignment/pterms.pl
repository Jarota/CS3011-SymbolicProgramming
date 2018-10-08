pterm(null).
pterm(f0(X)) :- pterm(X).
pterm(f1(X)) :- pterm(X).

incr(null, f1(null)).
incr(P1, P2) :- incr(pterm(P1), pterm(P2)).
