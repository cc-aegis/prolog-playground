:- include_module(library(clpfd)).

raetsel(A, B, C) :-
  between(1, 9, A),
  between(1, 9, B),
  between(1, 9, C),
  101 * C + 10 * A #= 11 * A + 11 * B.
