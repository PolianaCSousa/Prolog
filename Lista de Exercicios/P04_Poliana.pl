/*
  P04 (*) Find the number of elements of a list.
*/

%caso base: uma lista vazia possui 0 elementos
tam([],0).
tam([_|T],X) :- tam(T,Aux),
                X is Aux + 1.                

