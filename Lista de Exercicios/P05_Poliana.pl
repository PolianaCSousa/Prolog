/*
  P05 (*) Reverse a list.
*/

%caso base (lista vazia)

/*
inverte_lista(X,[]).
inverte_lista(X,[H|T]) :- Aux is [_|H],
                       inverte_lista(Aux,T).
*/

/*
inverte_lista([],[]).
inverte_lista(Invertida,[_|T]) :- inverte_lista(Aux,T).
*/

% OLHEI O CÓDIGO RESPOSTA POIS NÃO CONSEGUI RESOLVER ESSE EXERCÍCIO :(

%L1 é a lista que quero inverter, L2 é a lista invertida
inverte_lista(L1,L2) :- invertida(L1,L2,[]).
invertida([],L2,L2) :- !.
invertida([H|T],L2,Aux) :- invertida(T,L2,[H|Aux]).

/*Pelo que entendi, A unificacao de Aux com [H|Aux] gera uma lista com o primeiro elemento da lista passada seguido dos elementos de Aux, ou seja, não está sendo passado a lista aux (Ex: [3|[2, 3]] - não é isso que acontece, mas [3 | 2, 3]*/