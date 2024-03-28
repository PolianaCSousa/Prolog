

%fatos
/*
mortal(homem).
 mortal(gato).
 mortal(cachorro).
 homem(Socrates).
*/


%BACKUP AULA
/*
  Podemos fazer tabelas de duas colunas.
  Ao crar a tabela sou eu quem crio a l�gica dela, eu quem crio o padr�o que desejo seguir.
  Nesse caso, pro fato gerou, a primeira coluna possui o pai e a segunda coluna possui o filho.
*/

%FATOS
gerou(adao,cain).
gerou(adao,abel).
gerou(adao,seth).
gerou(seth,enos).
gerou(seth,judite).
gerou(abel,sara).
gerou(abel,mara).
gerou(cain,marta).
gerou(sara,elen).
pai(ivo,eva).
mae(ana,eva).
pai(gil,rai).
pai(gil,clo).
pai(gil,ary).
mae(bia,rai).
mae(bia,clo).
mae(bia,ary).
pai(rai,noe).
mae(eva,noe).
pai(ary,gal).
mae(lia,gal).

%REGRAS
/*
  Ao construir regras, precisaremos de alguns operadores.
  ,  � o E
  ;  � o OU
  :- � o SE
*/


%A regra abaixo verifica se X e Y s�o irm�os
irmaos(X,Y):-gerou(Z,X),gerou(Z,Y).

%A regra abaixo verifica se X � tio de Y
tio(X,Y):-gerou(Z,Y),irmaos(Z,X).

%A regra abaixo verifica se X � av�/av� de Y
avo(X,Y):-gerou(Z,Y),gerou(X,Z).





