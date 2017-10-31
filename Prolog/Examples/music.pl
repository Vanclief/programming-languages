author(metallica, "Enter the Sandman").
author(rammstein, "Du Hast").
author(rammstein, "Links 1,2,3").
author("Pink Floyd", "Hey You").
author("Pink Floyd", "In the Flesh").
author(nirvana, "Rape Me").
author(rammstein, "Rape Me").
inspired("Pink Floyd", "Rape Me").

authored(X, Z) :-
  author(X,Z).

worked_together(X, Y, Z) :-
  author(X, Z),
  author(Y, Z).


inspired_song(X, Y, Z) :-
  inspired(X, Y),
  author(Z, Y).

