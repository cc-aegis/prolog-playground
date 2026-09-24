:- use_module(library(clpr)).

anhalteweg(S, V, T, A) :- { S = V * T + V ^ 2 / (2 * A) }.
