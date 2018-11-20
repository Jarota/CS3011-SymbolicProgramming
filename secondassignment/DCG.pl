%----- Q1 -----

uv --> [], l(0).
l(Count) --> [2], r(Count).
l(Count) --> [0], l(succ(Count)).
l(Count) --> [1], l(Count).
r(0) --> [].
r(0) --> [0].
r(Count) --> [0], r(Count).
r(succ(succ(Count))) --> [1], r(Count).

%----- Q2 -----

street --> houses(_,_,_).
houses(A, B, C) --> col(A, A1), nat(B, B1), pet(C, C1), col(A1, A2), nat(B1, B2), pet(C1, C2), col(A2, _), nat(B2, _), pet(C2, _).

col(r, b_g) --> [red].
col(b, g_r) --> [blue].
col(g, r_b) --> [green].
col(b_g, g_end) --> [blue].
col(b_g, b_end) --> [green].
col(g_r, r_end) --> [green].
col(g_r, g_end) --> [red].
col(r_b, b_end) --> [red].
col(r_b, r_end) --> [blue].
col(r_end, end) --> [red].
col(g_end, end) --> [green].
col(b_end, end) --> [blue].

nat(eng, spa_jap) --> [english].
nat(spa, jap_eng) --> [spanish].
nat(jap, eng_spa) --> [japanese].
nat(spa_jap, jap_end) --> [spanish].
nat(spa_jap, spa_end) --> [japanese].
nat(jap_eng, jap_end) --> [english].
nat(jap_eng, eng_end) --> [japanese].
nat(eng_spa, eng_end) --> [spanish].
nat(eng_spa, spa_end) --> [english].
nat(eng_end, end) --> [english].
nat(spa_end, end) --> [spanish].
nat(jap_end, end) --> [japanese].

pet(jag, sna_zeb) --> [jaguar].
pet(sna, zeb_jag) --> [snail].
pet(zeb, jag_sna) --> [zebra].
pet(sna_zeb, zeb_end) --> [snail].
pet(sna_zeb, sna_end) --> [zebra].
pet(zeb_jag, jag_end) --> [zebra].
pet(zeb_jag, zeb_end) --> [jaguar].
pet(jag_sna, sna_end) --> [jaguar].
pet(jag_sna, jag_end) --> [snail].
pet(jag_end, end) --> [jaguar].
pet(sna_end, end) --> [snail].
pet(zeb_end, end) --> [zebra].


%----- Q3 -----

mkList(1,[1]).
mkList(N, [N|T]) :- N > 1, N1 is N - 1, mkList(N1, T).

s(N) --> [N].
s(N) --> {mkList(N, L)},{member(Num,L)}, {Rest is N - Num}, {Rest > 0},[Num], s(Rest).
