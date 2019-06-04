parent(ahmed,marry).
parent(fred,sally).
parent(tina,sally).
parent(fred,peter).
parent(sallt,john).
parent(sally,diane).
parent(john,sally).
parent(vanessa,sally).
parent(sam,bill).
parent(adam,sally).
/*
variables: always start with capital letter
Querry: its something such as parent(X,sally). When we try to extract some information
*/
female(vanessa).
female(sally).
female(tina).
female(diane).
/*The following is called a Rule
:- means if ',' means and ';' means or */
mother(X,Y) :- parent(X,Y),female(X),write('it is her mother'),nl.

siblings(X,Y) :- parent(Z,X),parent(Z,Y),X\=Y.

/*Trying to do the logic circuit question*/