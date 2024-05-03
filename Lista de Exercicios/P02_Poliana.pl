/*
  P02 (*) Find the last but one element of a list.
*/

%caso base (em uma lista que possui apenas dois elementos, o penúltimo é o primeiro elemento da lista)
penultimo(X,[X,_]).
penultimo(X,[_|Y]) :- penultimo(X,Y).
hal