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
