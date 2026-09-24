flug(hamburg, frankfurt).
flug(hamburg, muenchen).
flug(frankfurt, new_york).
flug(muenchen, new_york).
flug(new_york, san_francisco).

verbindung(X, Y) :-
  flug(X, Y);
  flug(X, Z), verbindung(Z, Y).

umsteigen(X, Y) :-
  flug(X, Z),
  flug(Z, Y).

route(X, Y, [X, Y]) :- flug(X, Y).
route(X, Z, [X|Rest]) :- flug(X, Y), route(Y, Z, Rest).
