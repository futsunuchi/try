

/*
two topics will be cover Lists and Recursive fucntions
lists are written with the syntaxe seen on top X being the head as an element and Y being the tail always given as a list
*/

arr0(X,Y,[X|Y]).

arr1(X,[_|X]). /* this is expecting at least one variable inside the list */

arr2([_,_]). /* when we have a comma instead of a pipe means we have a list consisting of exactly two elements */

arr3(X,Y,Z,[[X,Y]|Z]). /* this one needs to have at least one element which needs to be a list of 2 elements */

arr4(X,Y,Z,[[X|Y],Z]). /* this means its a list composed of a list followed by and element */

arr5(X,Y,Z,[[X|Y]|Z]).	/* this means its a list composed of a list followed by some elements */

arr6(X,[X|_],[_|X]).	/* for tbis one the head of the first list must be the same as the tail of the second list */

size([],0). /* this will be the base case of our recursive methode to count the size of a list) */
size([_|T],X):- size(T,R),X is R+1 . /* this is the call to the self methode */