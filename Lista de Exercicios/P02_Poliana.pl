/*
  P02 (*) Find the last but one element of a list.
*/

%caso base (em uma lista que possui apenas dois elementos, o penúltimo é o primeiro elemento da lista)
penultimo(X,[X,_]). %no caso base, a lista terá dois elementos, sendo o primeiro o penúltimo, e outro elemento não importa.
penultimo(X,[_|Y]) :- penultimo(X,Y).
