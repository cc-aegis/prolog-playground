note(anna, 1.3).
note(ben, 2.7).
note(clara, 4.3).
note(david, 3.7).

bewertung(N, sehr_gut) :- N =< 1.5, !.
bewertung(N, gut) :- N =< 2.5, !.
bewertung(N, befriedigend) :- N =< 3.5, !.
bewertung(N, ausreichend) :- N =< 4.0, !.
bewertung(N, nicht_bestanden).

bestanden(P) :- note(P, N), \+ bewertung(N, nicht_bestanden).
