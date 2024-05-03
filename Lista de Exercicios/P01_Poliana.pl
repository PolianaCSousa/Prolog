/*
  P01 (*) Find the last element of a list.
          Example:
          ?- my_last(X,[a,b,c,d]).
          X = d
*/

%caso base (o elemento de uma lista com apenas um elemento é o último elemento de uma lista)
last(X,[X]).
last(X,[_|T]) :- last(X,T).