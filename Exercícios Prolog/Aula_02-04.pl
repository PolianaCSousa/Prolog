/* 
  PROBLEMA DA MOCHILA

  


*/

/*
  CALCULANDO A POTÊNCIA COM RECURSÃO

  - No exemplo do slide, B^n = B^n-1 * B e temos que P = B^n e R = B^n-1. Entao P recebe B * R pra ser o mesmo que P = B^n
*/

/*
  REPRESENTANDO UM GRAFO (Tirei foto)

*/

%REPRESENTANDO O GRAFO DIRIGIDO

%aresta(Origem, Destino, Peso)
aresta(1,2,1).
aresta(1,4,2).
aresta(2,3,2).
aresta(3,5,1).
aresta(4,5,2).
aresta(5,6,5).
aresta(6,3,3).
aresta(7,8,1).
aresta(8,6,4).

%E se o grafo não fosse dirigido? Eu teria que representar aresta(1,2,1) e aresta(2,1,1)? Naoo, fariamos da seguinte forma:
ligado(X,Y,P) :- aresta(X,Y,P). %ele colocou ! nos dois, depois entender isso melhor.
ligado(X,Y,P) :- aresta(Y,X,P).

%Agora o objetivo seria criar uma regra que verifica se um vértice está conectado a outro (se partindo de X consigo chegar em Y)
%esse código eu acho que ta entrando em loop quando um vertice nao está conectado ao outro.

/*
  conectado(X,Y,_) :- aresta(X,Y,_).
  conectado(X,Y,_) :-
    aresta(X,Z,_), conectado(Z,Y,_).
*/

%pra resolver esse problema do loop, eu posso armezenar os vertices que ja foram visitados

conectado(X,Y) :- caminho(X,Y,[X]).

%caminho é uma regra auxiliar so pra ver o caminho percorrido e salvar os vertices que ja foram visitados

caminho(X,Y,Proibidos) :- 
  \+ member(Y,Proibidos),
  aresta(X,Y,_), !.
caminho(X,Y,Proibidos) :-
    aresta(X,Z,_), 
    \+ member(Y,Proibidos),
    append(Proibidos,[Z],Proibidos2).
    caminho(Z,Y,Proibidos2), !.

