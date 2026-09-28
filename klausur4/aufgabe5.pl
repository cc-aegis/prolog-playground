chef(bernd, anna).
chef(clara, anna).
chef(david, bernd).
chef(emil, bernd).
chef(frida, clara).

vorgesetzt(C, M) :-
  chef(M, C);
  chef(M, Z), vorgesetzt(C, Z).

kollege(X, Y) :-
  chef(X, C),
  chef(Y, C),
  X \== Y.
r
