voraussetzung(pp, prog2).
voraussetzung(prog2, prog1).
voraussetzung(db, prog1).
voraussetzung(se, prog2).
voraussetzung(se, db).

benoetigt(K, V) :-
  voraussetzung(K, V);
  voraussetzung(K, Z), benoetigt(Z, V).

% einstieg(K) :- voraussetzung(K, _), !, fail.
% einstieg(K) :- voraussetzung(_, K).
einstieg(K) :- voraussetzung(_, K), \+ voraussetzung(K, _).

gemeinsam(K1, K2, V) :- benoetigt(K1, V), benoetigt(K2, V), K1 \== K2.
