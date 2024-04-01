/*

  %OPERADORES LÓGICOS
  % , é o E
  % ; é o OU
  % :- é o SE
  % \= é o DIFERENTE

  %Operadores para comparações numéricas (OPERADORES NUMÉRICOS)
  % =:= é o IGUAL
  % =\= é o diferente
  % > é o maior
  % >= é o maior e igual
  % < é o menor
  % <= é o menor e igual

*/


/* ARITIMÉTICA EM PROLOG

  O prolog vai unificar termo por termo nessa consulta abaixo: 1 com 2, + com +, e 2 com 1. Logo como 1 != 2 ele retorna falso.
  1 + 2 = 2 + 1 -> false

  Já nesse caso, a unificação vai ser verdadeira, pois 1 com 1, + com + e 2 + 2 é verdadeiro.
  1 + 2 = 1 + 2 -> true

  Agora, se eu quero verificar se o valor numérico é igual (1 + 2 = 3 e 2 + 1 = 3), eu devo usar o operador para comparações numéricas:
  1 + 2 =:= 2 + 1
  obs: o mesmo funciona para \= e =\=.

 */


 /* OPERADOR IS

  O operador is é um operador de atribuição.
  Ao usar o is, as variáveis à direita dele devem possuir um valor, caso contrário o Prolog retorna um erro.

*/

soma(A, B, S) :- S is A + B.
% além de realizar a soma, eu posso verificar se uma soma está correta:
% ?- soma(10,20,30).
% true.


/* ------------------------------- EXERCÍCIO 1 -------------------------------- */
/* Crie uma regra em Prolog que peça no console um número inteiro e imprima na tela se o número é maior que 100 ou se é menor ou igual a 100 */


%O Prolog vai amarrar o texto na variável Resultado somente se a condição para Num for atendida.
verifica(Num,'O numero informado e maior que 100.') :- Num > 100, !.
verifica(Num, 'O numero informado e menor que 100.') :- Num < 100, !.
verifica(Num, 'Voce informou o numero 100.') :- Num =:= 100.


start :- 
  write('Informe um numero inteiro: '),
  read(Num),
  verifica(Num, Resultado), 
  write(Resultado).
