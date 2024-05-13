/*P06 (*) Find out whether a list is a palindrome.
A palindrome can be read forward or backward; e.g. [x,a,m,a,x].*/

palindrome(L1,L2) :- is_palindrome(L1,L2,[]).

is_palindrome(L1,L1,_) :- !.
is_palindrome([H|T],L2,Aux) :- 