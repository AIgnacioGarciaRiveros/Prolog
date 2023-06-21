Ej 0.1 "Dragon Ball Z"
%
% Hechos sobre DBZ
%
parent(bardock,radditz).
parent(bardock,goku).
parent(goku,gohan).
parent(goku,goten).
parent(chichi,gohan).
parent(chichi,goten).
parent(mrsatan,videl).
parent(gohan,pan).
parent(videl,pan).
parent(vegeta,trunks).
parent(bulma,trunks).
parent(vegeta,bra).
parent(bulma,bra).

rival(piccolo,goku).
rival(goku,piccolo).
rival(vegeta,goku).
rival(goku,vegeta).
 
male(bardock).
male(radditz).
male(goku).
male(gohan).
male(goten).
male(vegeta).
male(trunks).
male(piccolo).
male(mrsatan).

female(chichi).
female(bulma).
female(videl).
female(pan).
female(bra).
 
%
% Definicion de parentescos
% parent(parent,child)
%
 
% padre, madre, abuelos
father(Father,Child):-
    parent(Father,Child),
    male(Father).

father2(Father,Child):-
    Father = vegeta,
    parent(Father,Child),
    male(Father).
% si father no es vegeta va a dar falso
%si father no viene le asigna y unifica vegeta
%
mother(Mother,Child):-
    parent(Mother,Child),
    female(Mother).

mother2(Mother,Child):-
    parent(Mother, Child),
    \+father(Mother, Child).

grandparent(Grandparent, Child):-
    parent(Grandparent, Parent),
    parent(Parent, Child).

sibling(X,Y) :- 
    parent(Z,X), 
    parent(Z,Y),
    \+ (X=Y).
% no quiero los casos donde x sea igual a y 
% bien segun fede
siblingFede(X,Y) :- 
    parent(Parent,X), 
    parent(Parent,Y),
    X\== Y.

uncleFede(Uncle,Nephew):-
    sibling(Father,Uncle),
    parent(Father,Nephew),
    male(Uncle).

uncle(X,Y) :- parent(Z,Y),sibling(Z,X),male(X).

aunt(X,Y) :- parent(Z,Y),sibling(Z,X),female(X).