/*
  P22 (*) Create a list containing all integers within a given range.
  Example:
  ?- range(4,9,L).
  L = [4,5,6,7,8,9]
*/

%Vou usar a seguinte lógica: vou incrementar o menor valor do range até que ele seja igual ao maior. Quando isso acontecer, eu chego no caso base.

%caso base: a lista tem apenas um elemento (o valor dos extremos que delimitam o intervalo é o mesmo)
% I = inicio do intervalo (primeiro elemento)
% F = fim do intervalo (último elemento)
range(F,F,[F]). 
range(I,F,[I|L]) :- Iaux is I + 1,
                    range(Iaux,F,L).