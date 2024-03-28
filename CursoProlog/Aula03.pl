/* ------------------------------- EXERCÍCIO 1 -------------------------------- */

/* Considere a seguinte base de fatos em Prolog: */
aluno(joao,calculo).
aluno(maria,calculo).
aluno(joel,programacao).
aluno(joel,estrutura).
frequenta(joao,puc).
frequenta(maria,puc).
frequenta(joel,ufrj).
professor(carlos,calculo).
professor(ana_paula,estrutura).
professor(pedro,programacao).
funcionario(pedro,ufrj).
funcionario(ana_paula,puc).
funcionario(carlos,puc).

/* Quem são os alunos do professor X? */

%a regra verifica se X é aluno de Y
alunos(X,Y):-aluno(X,Materia),professor(Y,Materia).

/* Quem são as pessoas associadas a uma universidade X? */

%a regra verifica se X está associado(é membro) de Y
membros(X,Y):-frequenta(X,Y);funcionario(X,Y).
%
%  CÓDIGO DO BRUNO
%  alunos_associados(Aluno,Faculdade):-frequenta(Aluno,Faculdade).
%  professores_associados(Professor,Faculdade):-funcionario(Professor,Faculdade).
%  associados(Pessoa,Faculdade):-alunos_associados(Pessoa,Faculdade);professores_associados(Pessoa,Faculdade).
%



/* ------------------------------- EXERCÍCIO 2 -------------------------------- */

/* Elabore um programa Prolog que forneça o nome da capital de qualquer estado da região sudeste. */

%base de dados
sudeste(minas_gerais,belo_horizonte).
sudeste(sao_paulo,sao_paulo).
sudeste(rio_de_janeiro,rio_de_janeiro).
sudeste(espirito_santo,vitoria).

%regra que diz se X é capital de Estado
capital(X,Estado):-sudeste(Estado,X).

%
% Algumas consultas que posso fazer:
% 3 ?- sudeste(Capitais,_).
% Capitais = minas_gerais ;
% Capitais = sao_paulo ;
% Capitais = rio_de_janeiro ;
% Capitais = espirito_santo.
% 
% 3 ?- capital(X,minas_gerais).
% X = belo_horizonte.
% 
% 4 ?- capital(X,sao_paulo).    
% X = sao_paulo.
% 
% 5 ?- capital(belo_horizonte,Estado).
% Estado = minas_gerais.
%



/* ------------------------------- EXERCÍCIO 3 -------------------------------- */

/* Elabore um programa pra determinar quais tipos sanguíneos podem doar/receber sangue de quais tipos. A tabela seguinte fornece a informação
necessária para a implementação. Depois faça consultas para saber se um tipo pode doar para outro tipo, e se um tipo pode receber de outro
tipo.*/

doa(a,a).
doa(a,ab).
doa(b,b).
doa(b,ab).
doa(ab,ab).
doa(o,a).
doa(o,b).
doa(o,ab).
doa(o,o).
recebe(a,a).
recebe(a,o).
recebe(b,b).
recebe(b,o).
recebe(ab,a).
recebe(ab,b).
recebe(ab,ab).
recebe(ab,o).
recebe(o,o).