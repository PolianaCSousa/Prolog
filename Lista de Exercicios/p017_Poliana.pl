/*
  P17 (*) Split a list into two parts; the length of the first part is given.
  Do not use any predefined predicates.

  Example:
  ?- split([a,b,c,d,e,f,g,h,i,k],3,L1,L2).
  L1 = [a,b,c]
  L2 = [d,e,f,g,h,i,k]
*/

%---------------------------------------------------------

%caso base(ao partir uma lista vazia em duas, as listas resultantes também serão vazias)

/*split(Lista,Tam,L1,L2) :- split2().
split2([],_,[],[]).
split2().*/


%---------------------------------------------------------

/*split(Lista,Tam,L1,L2) :- 
                          
                          constroiL1(List,Tam,LAux,L1,L2),
                          constroiL2().

constroiL1(_,0,[],[],[]). %caso base: quando atingimos o tamanho da primeira lista
constroiL1([H|T],Tam,LAux,L1,L2) :- Aux is Tam - 1,
                                    constroiL1(T,Aux,LAux,L1,L2).*/

%---------------------------------------------------------
%esse codigo percorre até o elemento que eu sugeri. Se for 3, entao ele chama recursivo até o terceiro elemento, e o resto já é a segunda lista que eu preciso.

/*split(_,0,[],[]).
split([H|T],Tam,L1,L2) :- Aux is Tam - 1,
                          split(T,Aux,L1,L2)].*/


%---------------------------------------------------------
%eu consegui unificar, mas acho que terei problemas na recursão depois. CONFERIR - sim eu tive problema na recursão
split(_,0,[],_).
split([H|T],Tam,L1,L2) :- Aux is Tam - 1,
                          split(T,Aux,L1Aux,L2Aux),
                          unificaL2(T,L2Aux),
                          L2 = L2Aux.
                        
unificaL2(Uni,Uni) :- !.


%---------------------------------------------------------

/*EXPLICAÇÃO DO GPT

Claro! Vamos detalhar a unificação que ocorre na função add_cauda/3 que adiciona um elemento ao fim de uma lista em Prolog. Vou usar a função corrigida para referência:


% Caso base: adicionar um elemento a uma lista vazia resulta em uma lista contendo apenas esse elemento
add_cauda(X, [], [X]).

% Caso recursivo: percorre a lista até encontrar o final
add_cauda(X, [H|T], [H|L2]) :- add_cauda(X, T, L2).
Análise do Caso Recursivo
Vamos focar na linha recursiva e a unificação que ocorre nela:

add_cauda(X, [H|T], [H|L2]) :- add_cauda(X, T, L2).
Aqui está o passo a passo da unificação e da recursão:

Entrada Inicial:

X é o elemento a ser adicionado.
[H|T] é a lista original.
[H|L2] é a lista resultante após a adição do elemento no final.
Desconstrução da Lista:

[H|T] desconstrói a lista original em H (a cabeça) e T (a cauda).
[H|L2] significa que a cabeça da lista resultante deve ser o mesmo H da lista original e a cauda da lista resultante deve ser L2.
Chamada Recursiva:

A chamada recursiva add_cauda(X, T, L2) é feita com a cauda da lista original T e a nova variável L2.
Exemplo Prático
Vamos ver um exemplo prático para entender melhor a unificação e a recursão.

Suponha que queremos adicionar o elemento 4 à lista [1, 2, 3].

Primeira Chamada
add_cauda(4, [1, 2, 3], L).

X = 4
[H|T] = [1, 2, 3]
H = 1
T = [2, 3]
[H|L2] = [1|L2]
Chamada recursiva: add_cauda(4, [2, 3], L2)

Segunda Chamada
add_cauda(4, [2, 3], L2).

X = 4
[H|T] = [2, 3]
H = 2
T = [3]
[H|L2] = [2|L2]
Chamada recursiva: add_cauda(4, [3], L2)

Terceira Chamada
add_cauda(4, [3], L2).

X = 4
[H|T] = [3]
H = 3
T = []
[H|L2] = [3|L2]
Chamada recursiva: add_cauda(4, [], L2)

Caso Base
add_cauda(4, [], L2).

Caso base: L2 = [4].


Retornando das Chamadas Recursivas
Agora, começamos a retornar das chamadas recursivas, construindo a lista resultante:

Terceira Chamada Retorna:

L2 = [4]
[H|L2] = [3|[4]] = [3, 4]

Segunda Chamada Retorna:

L2 = [3, 4]
[H|L2] = [2|[3, 4]] = [2, 3, 4]

Primeira Chamada Retorna:

L2 = [2, 3, 4]
[H|L2] = [1|[2, 3, 4]] = [1, 2, 3, 4]
Portanto, a lista resultante é [1, 2, 3, 4].

Unificação na Recursão
A unificação chave aqui é entre L2 e [H|L2]. Durante cada chamada recursiva, L2 é progressivamente construído a partir das chamadas recursivas internas. Cada nível da recursão espera que a lista resultante da próxima chamada recursiva unifique com a cauda (L2), enquanto preserva a cabeça (H).

Na primeira chamada: [H|L2] = [1|L2] espera que L2 seja [2, 3, 4].
Na segunda chamada: [H|L2] = [2|L2] espera que L2 seja [3, 4].
Na terceira chamada: [H|L2] = [3|L2] espera que L2 seja [4].
Na quarta chamada: L2 = [4].
Esse encadeamento de unificações resulta na construção da lista completa [1, 2, 3, 4].


ENTENDENDO A UNIFICAÇÃO L2 E [H|L2]

A unificação em Prolog é bastante poderosa e flexível, permitindo manipulações interessantes e eficientes de listas e outras estruturas. Vamos esclarecer melhor como a unificação entre uma variável e uma estrutura como [H|L2] funciona no contexto da recursão.

Unificação de Variáveis com Listas
Quando você escreve [H|L2], está de fato dizendo que a lista possui uma cabeça H e uma cauda L2. Durante a unificação, Prolog tenta casar os elementos da lista da esquerda com os elementos da estrutura da direita, fazendo as substituições necessárias para que ambos se tornem iguais.

Contexto da Recursão
Na função add_cauda/3, o que acontece é que a cauda da lista original é gradualmente construída à medida que a recursão se desenrola. Vamos rever o código:


% Caso base: adicionar um elemento a uma lista vazia resulta em uma lista contendo apenas esse elemento
add_cauda(X, [], [X]).

% Caso recursivo: percorre a lista até encontrar o final
add_cauda(X, [H|T], [H|L2]) :- add_cauda(X, T, L2).

Detalhamento da Unificação e Recursão
Passo a Passo com um Exemplo
Suponha que queremos adicionar 4 à lista [1, 2, 3]:

Primeira Chamada:
add_cauda(4, [1, 2, 3], L).

Aqui, [H|T] = [1, 2, 3] unifica com H = 1 e T = [2, 3].
[H|L2] se torna [1|L2] e agora precisamos que L2 seja a lista resultante de add_cauda(4, [2, 3], L2).

Segunda Chamada:
add_cauda(4, [2, 3], L2).

[H|T] = [2, 3] unifica com H = 2 e T = [3].
[H|L2] se torna [2|L2] e agora precisamos que L2 seja a lista resultante de add_cauda(4, [3], L2).

Terceira Chamada:
add_cauda(4, [3], L2).

[H|T] = [3] unifica com H = 3 e T = [].
[H|L2] se torna [3|L2] e agora precisamos que L2 seja a lista resultante de add_cauda(4, [], L2).

Caso Base:
add_cauda(4, [], L2).

Aqui, L2 = [4] é diretamente unificado pelo caso base.
Montagem da Lista Resultante

A cada retorno das chamadas recursivas, a lista resultante é construída gradualmente:

Terceira Chamada Retorna:
L2 = [4]
[H|L2] se torna [3|[4]] = [3, 4].

Segunda Chamada Retorna:
L2 = [3, 4]
[H|L2] se torna [2|[3, 4]] = [2, 3, 4].

Primeira Chamada Retorna:
L2 = [2, 3, 4]
[H|L2] se torna [1|[2, 3, 4]] = [1, 2, 3, 4].

Unificação Chave
A chave aqui é que [H|L2] em cada chamada recursiva garante que:

H preserva o elemento atual da lista original.
L2 é a cauda da lista resultante que está sendo construída recursivamente.
Portanto, a unificação entre uma variável e uma estrutura como [H|L2] permite a construção recursiva de listas, garantindo que a lista original é preservada e o novo elemento é adicionado no final.

Visualizando a Recursão
Vamos visualizar a construção:

Inicial: add_cauda(4, [1, 2, 3], L).
H = 1, chama add_cauda(4, [2, 3], L2).
H = 2, chama add_cauda(4, [3], L2).
H = 3, chama add_cauda(4, [], L2).
L2 = [4] (caso base).
Ao retornar, L2 é atualizado gradualmente:

[3|[4]] = [3, 4]
[2|[3, 4]] = [2, 3, 4]
[1|[2, 3, 4]] = [1, 2, 3, 4]
Essa técnica é uma aplicação elegante de como a unificação pode ser usada para construir estruturas complexas de forma recursiva em Prolog.



OU SEJA:
Basicamente eu construi L2 já pensando no retorno das próximas chamadas recursivas que iriam retornar L2. O caso base retorna L2 e assim vai retornando até a chamada inicial. É a lógica 'Então se'. É o contrário de pensar do modelo estrutural.




Mensagem ChatGPT

ChatGPT pode cometer erros. Considere verificar informações importantes.

*/