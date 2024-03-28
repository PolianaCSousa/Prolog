mulher(pam).
mulher(ann).
mulher(liz).
homem(tom).
homem(bob).
homem(jim).
genitor(pam,bob).
genitor(tom,bob).
genitor(tom,liz).
genitor(bob,ann).
genitor(bob,pat).
genitor(pat,jim).

%a regra prole verifica se X é filho de Y
prole(X,Y) :- genitor(Y,X).

%a regra mae verifica se X é mãe de Y
mae(X,Y):-genitor(X,Y),mulher(X).

%a regra pai verifica se X é pai de Y
pai(X,Y):-genitor(X,Y),homem(X).

%a regra avo verifica se X é avo de Y
avo(X,Y):-genitor(Z,Y),genitor(X,Z). %genitor(X,Z),genitor(Z,Y) - (X,Z) e (Z,Y) logo (X,Y).
/*
  Algumas consultas usando variáveis anônimas:
  prole(_,tom). --> Essa consulta verifica se tom tem algum filho
  prole(tom,_). --> Essa consulta verifica se tom é filho de alguém
*/