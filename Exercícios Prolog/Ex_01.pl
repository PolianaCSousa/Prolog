/*  
    P01 (*) Find the last element of a list.
    Example:
    ?- my_last(X,[a,b,c,d]).
    X = d
*/


%L é o ultimo
last(L, [X]) :- [X]. 