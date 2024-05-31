/*
  P31 (**) Determine whether a given integer number is prime.
  Example:
  ?- is_prime(7).
  Yes

*/

/*
  OPERADOR DE MÓDULO
  O operador de módulo (resto da divisão) em Prolog é o mod:
  Resultado is X mod Y.
  ?- Resultado is 10 mod 3.
  ?- Resultado = 1

*/

%esse código retorna true pra qualquer número que eu passo


/*
primo(N) :- Divisor is N -1,
            Resultado is N mod Divisor,
            e_primo(N,Divisor,Resultado).
%caso base: se o numero for divisivel apenas por 1 e por ele mesmo, ao chegar em 1 o mod é 0 e o número é primo. Se tiver outra divisão que faça ser o mod = 0 entao nao é primo
e_primo(_,1,0).
e_primo(N,Divisor,Resultado) :- DivisorAux is Divisor - 1,
                          ResultadoAux is N mod DivisorAux,
                          e_primo(N,DivisorAux,ResultadoAux).   

*/

%--------------------------------------------------------------------------

/*
primo(N) :- Divisor is N -1 ,
            Resultado is N mod Divisor,
            e_primo(N,Divisor,Resultado).
%caso base: se o numero for divisivel apenas por 1 e por ele mesmo, ao chegar em 1 o mod é 0 e o número é primo. Se tiver outra divisão que faça ser o mod = 0 entao nao é primo
e_primo(_,Divisor,0) :- Divisor > 1.
e_primo(N,Divisor,Resultado) :- DivisorAux is Divisor - 1,
                          ResultadoAux is N mod DivisorAux,
                          \+ e_primo(N,DivisorAux,ResultadoAux),!.          
*/

%--------------------------------------------------------------------------

%vou tentar mudar a abordagem: vou tentar contar o numero de divisoes exatas do numero. Se for maior que 1 não é primo, se for == a 1 é primo

primo(N) :- Divisor is N -1,
            Mod is N mod Divisor,
            calcula_divisoes(Divisor,Mod,Qtd).
calcula_divisoes(Divisor,Mod,Qtd) :- .