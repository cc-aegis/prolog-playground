:- use_module(library(clpr)).

leistung(P, U, R, I) :-
  { U = R * I },
  { P = U * I }.
