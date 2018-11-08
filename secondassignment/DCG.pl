s --> l(0).
l(Count) --> [2], r(Count).
l(Count) --> [0], l(succ(Count)).
l(Count) --> [1], l(Count).
r(Count) --> [0], r(Count).
r(succ(succ(Count))) --> [1], r(Count).
