mov(1,2).
mov(1,3).
mov(1,4).
mov(2,5).
mov(2,6).
mov(2,7).
mov(3,8).
mov(3,9).
mov(3,6).
mov(4,5).
mov(4,7).
mov(4,11).
mov(4,9).
mov(7,8).
mov(7,10).
mov(8,9).

member(X,[X|_]).
member(X, [_|T]):-
	member(X, T).

empty_stack([]).

member_stack(E,S):-
	member(E, S).

stack(E, S, [E|S]).

reverse_print_stack(S):-
	empty_stack(S).

reverse_print_stack(S):-
	stack(E, Rest, S),
	reverse_print_stack(Rest),
	write(E), nl.

ldfs(Start, Goal, Limit):-
	empty_stack(Empty_been_list),
	stack(Start, Empty_been_list, Been_list),
  Depth is 0,
	path(Start, Goal, Limit, Depth, Been_list).

path(Goal, Goal, Limit, Depth, Been_list):-
	reverse_print_stack(Been_list).

path(State, Goal,  Limit, Depth, Been_list):-
	Limit =< Depth,
  !,
	false.

path(State, Goal, Limit, Depth, Been_list):-
	mov(State, Next),
	not(member_stack(Next, Been_list)),
	stack(Next, Been_list, New_been_list),
	D is Depth +1,
	path(Next, Goal, Limit, D, New_been_list),
	!.
