/*
  P20 (*) Remove the K'th element from a list.
    Example:
    ?- remove_at(X,[a,b,c,d],2,R).
    X = b
    R = [a,c,d]
*/

%sintaxe(lista,indice,elemento_removido,lista_resultante)

%caso base: em uma lista de um elemento, o elemento removido é o único elemento da lista
remove([X],_,X,[]).

%no entanto, acho que esse caso base serviria pro caso de remover o ultimo elemento da lista. Como o usuário passa um indice arbitrario, eu preciso definir meu caso base levando isso em consideração. 

%caso base: o elemento que eu quero remover, é o primeiro da lista (nesse caso, é H).
remove([H|Cauda],1,H,Cauda). 
remove([H|T],I,X,[H|L]) :- Iaux is I - 1,
                       remove(T,Iaux,X,L).