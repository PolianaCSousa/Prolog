/*
  P03 (*) Find the K'th element of a list.
          The first element in the list is number 1.
          Example:
          ?- element_at(X,[a,b,c,d,e],3).
          X = c
*/

%VOU USAR O CÓDIGO QUE VERIFICA O TAMANHO DE UMA LISTA, COMO ESQUELETO
%caso base (uma lista vazia, o elemento X está na posicao 0)
%element_at(0,[],0). %uma lista vazia possui tamanho 0. Além disso, vou considerar o elemento como sendo 0 quando a lista for vazia.
%element_at(X,[_|T],Posicao) :- element_at(X,T,Aux).
    %                        Aux is Aux + 1.





/*
%PASSO A PASSO PRA ENTENDER A RECURSÃO NO CÓDIGO:

consult -? element_at([1,2,4],X).

call [1,2,4],X:
element_at([],0). FALSE
element_at([_|T],Tam) :- element_at([2,4],Aux).
                         Tam is Aux + 1.

call [2,4],Aux:
element_at([],0). FALSE
element_at([_|T],Tam) :- element_at([4],Aux).
                         Tam is Aux + 1.

call [4],Aux:
element_at([],0). FALSE
element_at([_|T],Tam) :- element_at([],Aux).
                         Tam is Aux + 1.

call [],Aux:
element_at([],0). TRUE Aux = 0               
*/


%O CÓDIGO ABAIXO FUNCIONOU :D

%TENTANDO IMPLEMENTAR COM A DICA DE CASO BASE DO CHAT GPT
%sintaxe do predicado: element_at(elemento,lista,indice)

%caso base (o índice 1 da lista, corresponde ao primeiro elemento da lista)
element_at(X,[X|_],1).
element_at(X,[_|T],I) :- Iaux is I - 1,
                         element_at(X,T,Iaux).