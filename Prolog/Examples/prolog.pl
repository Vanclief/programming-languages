dad(billy, bob).
dad(bob, sue).
dad(bob, alex).
dad(alex, john).
dad(john, pete).
dad(pete, jack).
dad(ana, erika).
dad(erika, sue).
dad(sue, sussy).
dad(ana, billy).

grandpa(X, Z):-
  dad(X,Y),
  dad(Y,Z);
  mom(X,Y),
  mom(Y,Z).
