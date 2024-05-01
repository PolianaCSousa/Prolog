% ------------------------------------------------------------------------- LISTAS ---------------------------------------------------------------------- 

/*
  A maioria dos problemas com listas em Prolog, serão resolvidos usando recursividade
*/

% Implementando o problema que verifica se um elemento pertence a uma lista
%caso base (será verdadeiro se o X que a pessoa informou, está na primeira posição da lista)
pertence(X,[X|_]). %isso é o mesmo que pertence(X, [H | _]) :- X == H.
pertence(X,[_|T]) :- pertence(X,T).


%Implementado o problema que verifica ou retorna o último elemento da lista
%caso base (em uma lista de um único elemento, esse elemento será o último - logo o segredo, é reduzir a lista até ter só um elemento, e verificar se ele é igual ao elemento passado)
last(X,[X]). %isso é o mesmo que last(X, [Y]) :- X == Y. 
last(X,[_|T]) :- last(X,T).

%Implementando o problema que verifica se a lista possui 2 elementos consecutivos
%caso base (os dois primeiros elementos da lista são X e Y).
consec(X,Y,[X,Y|_]).
consec(X,Y,[_|T]) :- consec(X,Y,T).

%Implementando o problema que verifica o tamanho da lista dada
%caso base (se a lista for vazia, o tamanho é zero)
