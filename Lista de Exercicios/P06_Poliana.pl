/*P06 (*) Find out whether a list is a palindrome.
A palindrome can be read forward or backward; e.g. [x,a,m,a,x].*/

palindrome(L1) :- is_palindrome(L1,L1,[]).

is_palindrome([],L1,L1) :- !.
is_palindrome([H|T],L1,Aux) :- is_palindrome(T,L1,[H|Aux]).