add_cabeca(Lista,[0|Lista]).

/*Quando você escreve [H|Aux], isso não cria uma lista dentro de outra lista. Em vez disso, isso cria uma nova lista onde H é o primeiro elemento e os elementos de Aux são os elementos restantes. Isso é chamado de construção de lista em Prolog.

Por exemplo, se Aux é [1,2,3] e H é 4, então [H|Aux] será [4,1,2,3]. Ou seja, você está adicionando H ao início de Aux, resultando em uma nova lista.
*/

/*Portanto, no código teste acima, se Lista = [1,2,3], a nova lista não ficaria [0, [1,2,3]] mas sim [0,1,2,3]. Portanto, é assim que é feita a adição de cabeça na lista.*/




%CORRIGIR -> add_cauda(Lista,[Lista|0]).

/*Para inserir um elemento na cauda da lista, é um pouco diferente. Eu preciso percorrer toda a lista e encontrar o ultimo elemento dela, e ai adicionar o novo elemento na cauda*/

%ADICIONANDO ELEMENTOS NO FIM DA LISTA
%caso base: em uma lista vazia, o elemento adicionado no fim da lista, é o primeiro elemento da lista

%--------------------------------------------------------

/*add_cauda(X,[],[X]).
add_cauda(X,L1,L2) :- percorre_L1(X,L1,L2Aux).

percorre_L1(X,[],Aux) :- unificaCauda(X,T,[X]).
percorre_L1(X,[H|T],L2) :- percorre_L1(X,T,Aux).

unificaCauda(_,Cauda,Cauda).*/

%--------------------------------------------------------
%esse código nao fa muita coisa, apenas percorre a lista até chegar no ultimo elemento.

/*add_cauda(X,[],[X]).
add_cauda(X,L1,L2) :- percorre_L1(X,L1,L2Aux).

percorre_L1(X,[Y],Aux).
percorre_L1(X,[H|T],L2) :- percorre_L1(X,T,Aux).
*/

%--------------------------------------------------------
%vou tentar trabalhar com a propria lista

/*add_cauda(X,[],[X]).
add_cauda(X,[Y],_).
add_cauda(X,[H|T],L2) :- add_cauda(X,T,_).
*/

%--------------------------------------------------------
%vou pedir ajuda o GPT

%caso base: em uma lista vazia, o elemento adicionado no fim da lista, é o primeiro elemento da lista (ACERTEI ATÉ AQUI)
add_cauda(X,[],[X]).
add_cauda(X,[H|T],[H|L2]) :- add_cauda(X,T,L2).