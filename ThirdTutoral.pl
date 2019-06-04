/* tutorial #3 */
 
aUb([b]). /* Define a recursive function that takes a list [b] or that ends with b and has only previous a*/
aUb([a|T]):- aUb(T).

/* This example is a code where the list must begin with a 'c' or begin with an 'a' */
aUc([c|_]).
aUc([a|T]):-aUc(T).

/* Writea recursive method that will check if the size of the first list is the double of the size of the second list*/
a2b([],[]).	/* Base case when both list are empty*/
a2b([_,_|Ta],[_|Tb]):- a2b(Ta,Tb). /* Will remove two elements of the first list and remove one element from the second list */


contain(X,[X|_]). /* The base case is when head is equal to the parameter passed*/ 
contain(X,[_|T]):- contain(X,T). /* It will remove the head each time until it reaches the base case or it returns false*/

thirdToLast(X,[X,_,_]).
thirdToLast(X,[_|T]):- thirdToLast(X,T).