reverse(L, R) :- reverse(L, [], R).
reverse([], Acc, Acc).
reverse([X|Xs], Acc, R) :- reverse(Xs, [X|Acc], R).

palindrome(L) :- reverse(L, R), L = R.
