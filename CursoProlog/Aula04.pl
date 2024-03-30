:-dynamic mulher/1.
:-dynamic homem/1.
:-dynamic genitor/2.
:-dynamic sala/6.


/* Formas de usar o listing, retractall

  Posso fazer uma consulta com o listing. A diferença é que ele me retorna a regra ou fato que está definida:

  listing(genitor(_,bob)). 
  
  genitor(pam, bob).
  genitor(tom, bob).


  Agora eu posso excluir todos os fatos que possuem bob como filho:

  retractall(genitor(_,bob)).
  
 */


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



%sala(num,dia,inicio,fim,disciplina,tipo)
sala(cp1103,seg, 10, 13, aaa, p).
sala(cp2301,ter,10,11,aaa,t).
sala(di011,sab,12,10,xxx,p). % com erro 
sala(cp3204,dom,8,10,zzz,p).
sala(di011,sex,14,16,xxx,p).
sala(di011,qui,14,13,bbb, t). % com erro
sala(di104,qui,9,10,aaa,tp).

/* Para corrigir os fatos com horário errado, eu preciso:

  1 - Definir o fato sala como dinâmico para poder manipulá-lo

      :-dynamic sala/6.

  2 - Criar uma consulta que recupere esses fatos com horários errados e os exclua (retract)

      (sala(_,_,Ini,Fim,_,_),Ini > Fim),retractall(_,_,Ini,Fim,_,_).


      Explicando a consulta:
      Nessa primeira parte, ele amarra nas variáveis Ini e Fim, apenas os valores cujo Ini > Fim
      (sala(_,_,Ini,Fim,_,_),Ini > Fim)

      Após encontrar os valores para Ini e Fim que satisfaz a condição acima, ele exclui todos os fatos que possuem os valores de Ini e Fim (ele busca fatos que possuem os valores encontrados).
      retractall(_,_,Ini,Fim,_,_).

  3 - Inserir os fatos com os dados corretos

*/