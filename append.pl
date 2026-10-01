append([], Y, Y).
append([X|Xs], Y, [X|R]) :-
    append(Xs, Y, R).
