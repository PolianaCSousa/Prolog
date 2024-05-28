/*
  P17 (*) Split a list into two parts; the length of the first part is given.
  Do not use any predefined predicates.

  Example:
  ?- split([a,b,c,d,e,f,g,h,i,k],3,L1,L2).
  L1 = [a,b,c]
  L2 = [d,e,f,g,h,i,k]
*/

%---------------------------------------------------------

%caso base(ao partir uma lista vazia em duas, as listas resultantes também serão vazias)

/*split(Lista,Tam,L1,L2) :- split2().
split2([],_,[],[]).
split2().*/


%---------------------------------------------------------

/*split(Lista,Tam,L1,L2) :- 
                          
                          constroiL1(List,Tam,LAux,L1,L2),
                          constroiL2().

constroiL1(_,0,[],[],[]). %caso base: quando atingimos o tamanho da primeira lista
constroiL1([H|T],Tam,LAux,L1,L2) :- Aux is Tam - 1,
                                    constroiL1(T,Aux,LAux,L1,L2).*/

%---------------------------------------------------------
%esse codigo percorre até o elemento que eu sugeri. Se for 3, entao ele chama recursivo até o terceiro elemento, e o resto já é a segunda lista que eu preciso.

/*split(_,0,[],[]).
split([H|T],Tam,L1,L2) :- Aux is Tam - 1,
                          split(T,Aux,L1,L2)].*/


%---------------------------------------------------------
%eu consegui unificar, mas acho que terei problemas na recursão depois. CONFERIR - sim eu tive problema na recursão
split(_,0,[],_).
split([H|T],Tam,L1,L2) :- Aux is Tam - 1,
                          split(T,Aux,L1Aux,L2Aux),
                          unificaL2(T,L2Aux),
                          L2 = L2Aux.
                        
unificaL2(Uni,Uni) :- !.


%---------------------------------------------------------

%TENTANDO UMA NOVA ABORDAGEM
%vou tentar dividir a lista da seguinte forma: percorrer até o "índice" informado pelo usuário, e a cauda que restar já unifico com L2, e L1 eu construo na volta da recursão.

%sintaxe: split(Lista,Tam,Lista1,Lista2).

%NESSE CÓDIGO JÁ ESTOU CONSEGUINDO A SEGUNDA LISTA. AGORA FALTA CONTRUIR A PRIMEIRA

/*
%caso base
split(Cauda,1,[Elemento_no_indice_informado],Cauda).
split([H|T],Tam,L1,L2) :- Aux is Tam - 1,
                          split(T,Aux,L1,L2).
*/

%---------------------------------------------------------

%caso base
split(Cauda,1,[Elemento_no_indice_informado],Cauda).
split([H|T],Tam,L1,L2) :- Aux is Tam - 1,
                          split(T,Aux,L1,L2).