% ------------------------------------ RECURSÃO % ------------------------------------
%Seja a base de dados a seguir
genitor(pam,bob).
genitor(tom,bob).
genitor(tom,liz).
genitor(bob,ann).
genitor(bob,pat).
genitor(pat,jim).

%regras para descobrir o descendente de cada um
%descendente(X,Y) :- genitor(Y,X). %descendente de primeiro nível (pai de X)
%descendente(X,Y) :- genitor(Y,Z), genitor(Z,X). %descendente de segundo nível (avo de X)
%descendente(X,Y) :- genitor(Y,Z), genitor(Z,W), genitor(W,X). %descendente de terceiro nível (bisavo de X))

%Fazendo as regras acima eu teria que fazer uma regra pra cada nível da árvore. Uma forma mais elegante de fazer isso, seria usando a recursão

%caso base
descendente(X,Y) :- genitor(Y,X). 
descendente(X,Y) :- genitor(Y,Z), descendente(X,Z).


% EXERCÍCIO DE FATORIAL
% Tentando implementar o fatorial sozinha usando a recursão

/*
  O que é o fatorial? 
  O fatorial de 5 = 5*4*3*2*1
  Então podemos dizer que o fatorial de 5 é: 5! = 5 * fatorial(4)
                                             4! = 4 * fatorial(3)
                                             3! = 3 * fatorial(2)
                                             2! = 2 * fatorial(1)
                                             1! = 1 * fatorial(0)
                                             0! = 1

  Logo, no fatorial temos que o caso base é o fatorial de 0 que é 1

*/

%caso base
%o passo a passo da execução do código eu escrevi no meu caderno de paradigmas, mas basicamente:
% W é o fatorial de Z e Z é X - 1. Y é o fatorial de X , e como W é X - 1 então Y = X * W 
fatorial(0,1).
fatorial(X,Y) :-
        Z is X - 1,
        fatorial(Z,W),
        Y is X * W, !.
