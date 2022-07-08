/*---------------------------------------------*/

%árvore genealógica

progenitor(seb,selma).
progenitor(seb,simone).
progenitor(seb,sergio).
progenitor(ita,selma).
progenitor(ita,simone).
progenitor(ita,sergio).
progenitor(iza, danielfilho).
progenitor(daniel, danielfilho).
progenitor(selma,andreas).
progenitor(simone,iris).
progenitor(sergio,sara).
mulher(selma).
mulher(simone).
mulher(iza).
mulher(ita).
homem(seb).
homem(daniel).
homem(sergio).
casal(ita,seb).
casal(selma,paulo).
casal(paulo,selma).

%regras

filhosJuntos(X,Y) :- progenitor(X,Z), progenitor(Y,Z), X \= Y.

irma(X,Y) :- progenitor(Z,X), progenitor(Z,Y), mulher(X), X \= Y.
irmao(X,Y) :- progenitor(Z,X), progenitor(Z,Y), homem(X), X \= Y.



/*--------------------------------------------------------*/
/* pais(Nome, area, populacao) */

pais('Brasil', 9, 130).
pais('China', 12, 1800).
pais('EUA', 9, 230).
pais('India', 3, 450).

/* exemplos de consultas

faz a conta da densidade demográfica do pais
pais('Brasil', A, P), Densidade is P/A.

diferença da população entre dois paises
pais('China', _, P1), pais('India', _, P2), Diferenca is P1-P2.

comparação da area entre dois paises
pais(brasil,X,_), pais(eua,Y,_), X =:= Y.

*/

/*---------------------------------------------*/

% func(Código, Nome, Salário)
func(1, ana, 1000.90).
func(2, bia, 1200.00).
func(3, ivo, 903.50).

% dep(Código, Nome)
dep(1, ary).
dep(3, raí).
dep(3, eva).

/*
 * quem são os dependentes de Ivo?
 * func(C,ivo,_), dep(C,N).
 * 
 * de quem Ary é dependente?
 * dep(C,ary),func(C,N,_).
 * 
 * quem depende de funcionário com salário inferior a 950,00?
 * func(C,_,S),dep(C,N), S < 950.00 .
 * 
 * funcionários que não tem dependentes?
 * func(C,N,_), not(dep(C,_)).

*/

/*--------------------------------------------------------*/

%Números binários de três dígitos.

d(0). 								% cláusula 1
d(1). 								% cláusula 2
b([A,B,C]) :- d(A), d(B), d(C). 	% cláusula 3

/*--------------------------------------------------------*/

f(X,0) :- X<5, !. 					% cláusula 1
f(X,1) :- X>=5, X=<9, !. 			% cláusula 2
f(X,2) :- X>9. 						% cláusula 3