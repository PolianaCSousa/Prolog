add_cabeca(Lista,[0|Lista]).

/*Quando você escreve [H|Aux], isso não cria uma lista dentro de outra lista. Em vez disso, isso cria uma nova lista onde H é o primeiro elemento e os elementos de Aux são os elementos restantes. Isso é chamado de construção de lista em Prolog.

Por exemplo, se Aux é [1,2,3] e H é 4, então [H|Aux] será [4,1,2,3]. Ou seja, você está adicionando H ao início de Aux, resultando em uma nova lista.
*/

/*Portanto, no código teste acima, se Lista = [1,2,3], a nova lista não ficaria [0, [1,2,3]] mas sim [0,1,2,3]. Portanto, é assim que é feita a adição de cabeça na lista.*/




%CORRIGIR -> add_cauda(Lista,[Lista|0]).

/*Para inserir um elemento na cauda da lista, é um pouco diferente. Eu preciso percorrer toda a lista e encontrar o ultimo elemento dela, e ai adicionar o novo elemento na cauda*/