:- use_module(library(clpr)).

putnam(G, P, A, T) :-
  { G = P * A ^ (1/3) * T ^ (4/3) }.
