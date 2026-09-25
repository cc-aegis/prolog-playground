letztes([X], X).
letztes([_|Xs], X) :- letztes(Xs, X).

summe([], 0).
summe([X|Xs], Summe) :-
  summe(Xs, RestSumme),
  Summe is X + RestSumme.

anzahl(_, [], 0).
anzahl(X, [X|Xs], R) :- !, anzahl(X, Xs, R2), R is R2 + 1.
anzahl(X, [_|Xs], R) :- anzahl(X, Xs, R).
