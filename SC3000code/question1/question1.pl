competitor(sumsum, appy).
smart_phone_tech(galacticas3).
boss(stevey, appy).
stole(stevey, galacticas3).
developed(sumsum, galacticas3).

rival(X, Y) :- competitor(X, Y).
business(X) :- smart_phone_tech(X).
unethical(X) :-
    boss(X, Company),
    rival(Rival, Company),
    business(B),
    stole(X, B),
    developed(Rival, B).
