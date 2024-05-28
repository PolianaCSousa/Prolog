/*
  P21 (*) Insert an element at a given position into a list.
  Example:
  ?- insert_at(alfa,[a,b,c,d],2,L).
  L = [a,alfa,b,c,d]
*/

%sintaxe: insert(Lista,Elemento,Posicao,Lista_resultante)

%caso base: o elemento será inserido na primeira posição da lista
insert(Lista,E,1,[E|Lista]).
insert([H|T],E,P,[H|L]) :- Paux is P - 1,
                       insert(T,E,Paux,L).