any_positive([H|_]):-
  H > 0.
any_positive([_|T]):-
  any_positive(T).

% any_positive ([-1,-2,3,-4])

substitute(_,_,[],[]).
substitute(A,B,[A|T1],[B|T2]):-
  substitute(A,B,T1,T2).
substitute(A,B,[X|T1],[X|T2]):-
  A \= X,
  substitute(A,B,T1,T2).

% substitute (2, 3, [1, 2, 2, 2, 3, 2], X).

delete(_,[],[]).
delete(H,[H|T1],T2):-
  delete(H,T1,T2).
delete(X,[H|T1],T2):-
  X \= H,
  delete(X,T1,T2).

eliminate_duplicates([],[]).
eliminate_duplicates([H|T],[H|T2]):-
  delete(T,H,L),
  eliminate_duplicates(L,T2).

% eliminate_duplicates ([a, a, a, a, b, c, c, a, a, d, e, e, e, e],X).

contains(X,[X|_]).
contains(X,[H|M]):-
  X \= H, contains(X,M).

intersect([],_,[]).
intersect(_,[],[]).
intersect([H|T1],[H|T2],[H|T3]):-
  intersect(T1,T2,T3).
intersect([H1|T1],[H2|T2],[H1|T3]):-
  contains(H1,T2),
  delete(H1,[H2|T2],L2),
  intersect(T1,L2,T3).
intersect([_|T1],[H2|T2],T3):-
  intersect(T1,[H2|T2],T3).

% intersect ([a, b, c, d], [b, d, e, f], X).

concat([],L,L).
concat([H|T],L,[H|T2]):-
  concat(T,L,T2).

invert([X],[X]).
invert([H|T],X):-
  invert(T,S),
  concat(S,[H],X).

% invert([a, b, e, c, e],X).

less_then(_,[],[]).
less_then(X,[H|T],[H|T2]):-
  X>H,
  less_then(X,T,T2).
less_then(X,[_|T],T2):-
  less_then(X,T,T2).

% less_then(5, [1, 6, 5, 2, 7], X).

more_than(_,[],[]).
more_than(X,[H|T],[H|T2]):-
  X =< H,
  more_than(X,T,T2).
more_than(X,[_|T],T2):-
  more_than(X,T,T2).

% more_than((5, [1, 6, 5, 2, 7], X).

quicksort([],[]).
quicksort([H|T],LIST):-
  less_then(H,T,LOWER),
  more_than(H,T,BIGGER),
  quicksort(LOWER,L),
  quicksort(BIGGER,R),
  concat(L,[H|R],LIST).

% quicksort([1, 6, 5, 2, 7], X).

rotate(LIST, X, R) :-
  length(LIST, Length),
  Z is ((X mod Length) + Length) mod Length,
  append(Init, T, R),
  length(T, Z),
  append(T, Init, LIST).

% rotate([1, 6, 5, 2, 7], 3, X).
