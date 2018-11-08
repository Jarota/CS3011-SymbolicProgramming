%----- Q1 -----

uv --> [], l(0).
l(Count) --> [2], r(Count).
l(Count) --> [0], l(succ(Count)).
l(Count) --> [1], l(Count).
r(0) --> [].
r(Count) --> [0], r(Count).
r(succ(succ(Count))) --> [1], r(Count).

%----- Q2 -----

s --> trio, trio, trio.
trio --> col, nat, pet.

col --> [red].
col --> [blue].
col --> [green].

nat --> [english].
nat --> [spanish].
nat --> [japanese].

pet --> [jaguar].
pet --> [snail].
pet --> [zebra].
