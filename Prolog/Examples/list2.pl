substract([Element|Tail],Element, Tail).
substract([Head|Tail],Element, [Head|Tail1]) :-
substract(Tail,Element,Tail1).


fibo(N,1) :-
   N < 2,
   !.
fibo(N,R) :-
   N1 is N-1,
   N2 is N-2,
   fibo(N1,R1),
   fibo(N2,R2),
   R is R1+R2.
