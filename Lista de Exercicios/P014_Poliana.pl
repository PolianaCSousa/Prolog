/*P14 (*) Duplicate the elements of a list.
Example:
?- dupli([a,b,c,c,d],X).
X = [a,a,b,b,c,c,c,c,d,d]*/

/*duplicate(L,LD) :- duplicated(L,[]).

%caso base: cheguei no último elemento da lista
duplicated([X],[]). 
duplicated([H|T],Aux) :- duplicated(T,Aux),
                         duplica([H|T], Aux).

%duplica() */
                        
%----------------------- REFAZENDO ----------------------

%BACKUP
/*
  duplica([],[]).
  duplica([H|T],X) :- duplica(T, X),
                    duplica2(H,X).

  duplica2(H, [H,H|X]) :- !.
  duplica2(H,X) :- duplica2(H,[H,H|X]).
*/


%---------------------------------------------------------

/*duplica([],[]).
duplica([H|T],X) :- duplica(T, X),
                    duplica2(H,X).

duplica2(H, [H,H|X]) :- !.
duplica2(H,X) :- duplica2(H,[H,H|X]).*/

%---------------------------------------------------------

/*duplica([],[]).
duplica([H|T],X) :- duplica(T,X),
                    duplica2(H,Aux,X),
                    X = Aux.

duplica2(H, [H,H|X], []) :- !.
duplica2(H,X) :- duplica2(H,[H,H|X], X).*/

%---------------------------------------------------------

/*duplica([],_).
duplica([H|T],X) :- duplica(T,X),
                    duplica2(H,[],X),
                    X is Aux.

duplica2(H, [H,H|X], []) :- !.
duplica2(H,X) :- duplica2(H,[H,H|X], X).*/

%---------------------------------------------------------

/*duplica([],[]).
duplica([H|T],X) :- duplica(T,X),
                    duplica2(H,[H,H|X]).
duplica2(H, [H,H|X]) :- !.*/

%---------------------------------------------------------

%código de maior progresso:

duplica([],[]).
duplica([H|T],X) :- duplica(T,Aux),
                    duplica2(H,[H,H|Aux]),
                    

duplica2(H, [H,H|_]) :- !.

%---------------------------------------------------------
%progredindo um pouco mais. ANTES DE TERMINAR, RODAR ELE NA MÃO

duplica([],[]).
duplica([H|T],X) :- duplica(T,Aux),
                    duplica2(H,[H,H|Aux]),
                    X = Aux. %ele unificou, mas unificou com Aux que é  []...

duplica2(H, [H,H|_]) :- !.




