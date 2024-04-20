% ------------------------------ Ferramenta de corte ------------------------------ 
f(X,0) :- X < 3.
f(X,2) :- 3 =< X, X < 6.
f(X,4) :- 6  =< X.

/*Quando eu passo um valor pra variável na consulta, o prolog vai parar assim que achar o valor que passei, pra variavel. Agora, quando eu passo uma variável X e procuro o valor dela, depois de ter achado o primeiro valor pra ela, ele vai continuar buscando outros valores, por isso, nesses casos, como é o caso do fatorial, eu preciso falar pra ele parar, seja com o ! ou seja de alguma outra forma.*/

/*
  Se p, q e r forem verdadeiros, o corte será executado (ele é sempre verdadeiro) e s, t e u serão executados. Ao retornar (se o fluxo do c voltar de u até p), o prolog fará o backtracking apenas do s, t e u, e não fará o backtracking de p, q e r.
  c :- p, q, r, !, s, t, u.
*/

/*
  Quando usamos o corte, a ordem dos predicados importa
*/

/*
  p(X) :- a(X), !, b(X). Nessa linha, O corte será executado se a(X) for verdadeiro. Caso contrário, o Prolog não vai nem continuar a busca, e vai pra proxima linha (backtracking). 
*/



a(1).
b(2).
c(1).
p(X) :- a(X), !, b(X).
p(X) :- c(X).

