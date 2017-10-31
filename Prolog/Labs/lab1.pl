% Franco Valencia A01206630

% Hobby Knowledge Base
hobby(juan, kaggle).
hobby(luis, hack).
hobby(elena, tennis).
hobby(midori, videogame).
hobby(simon, sail).
hobby(simon, kaggle).
hobby(laura, hack).
hobby(hans, videogame).

% Brain Knowledge Base
connect(frontal_lobe, brocas_area).
connect(frontal_lobe, parietal_lobe).
connect(frontal_lobe, temporal_lobe).
connect(parietal_lobe, wernickes_area).
connect(parietal_lobe, occipital_lobe).
connect(parietal_lobe, temporal_lobe).
connect(brocas_area, temporal_lobe).
connect(temporal_lobe, wernickes_area).
connect(occipital_lobe, wernickes_area).

% Hobby Methods

compatible(X, Y) :-
  hobby(X, Z),
  hobby(Y, Z).

% Brain Methods

can_get_to(X, Y) :-
  connect(X, Y).

size(X, Y, C) :-
 connect(X, Y),
 write(C).

size(X, Y, C) :-
  connect(X, Z),
  N is C+1,
  size(Z, Y, N).

% Math Methods
min(A,B,C) :-
	A<B,
	A<C,
	write(A).
min(A,B,C) :-
	A<B,
	write(C).
min(_,B,C) :-
	B<C,
	write(B).
min(_,_,C) :-
	write(C).

gcd(A,B,Z):-
  A=B,
  Z is A.

gcd(A,B,Z):-
  A>B,
  A1 is A-B,
  gcd(A1,B,Z).

gcd(A,B,Z):-
  A<B,
  B2 is B-A,
  gcd(A,B2,Z).
