praefix(P, L) :- append(P, _, L).

verdoppelt([], []).
verdoppelt([L|Ls], [R|Rs]) :-
  ground(L), !
  R is L * 2,
  verdoppelt(Ls, Rs).
verdoppelt([L|Ls], [R|Rs]) :-
  ground(R),
  L is R / 2,
  verdoppelt(Ls, Rs).
