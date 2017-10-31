swap([H1,H2|T],[H2,H1|T]):-
  H1 > H2.

swap([H|T],[H|T1]):-
  swap(T,T1).

bubble_sort(List, Sorted):-
  swap(List, ListSwaped),
  !,
  bubble_sort(ListSwaped, Sorted).

bubble_sort(Sorted, Sorted).

