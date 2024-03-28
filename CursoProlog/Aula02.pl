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
/*
  Algumas consultas usando variáveis anônimas
*/