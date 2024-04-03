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