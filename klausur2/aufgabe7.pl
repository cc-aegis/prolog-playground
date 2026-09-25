:- include_module(library(clpfd)).

raetsel(A, B, C) :-
  between(1, 9, A),
  between(1, 9, B), A =\= B,
  between(1, 9, C), B =\= C, A =\= C,
  101 * C + 10 * A =:= 11 * A + 11 * B.

raetsel(A, B, C) :-
  [A, B, C] ins 1..9,
  all_different([A, B, C]),
  101 * C + 10 * A #= 11 * A + 11 * B,
  label([A, B, C]).
