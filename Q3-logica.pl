% filme(Título, Gênero, Ano, Duração)
filme("Uma linda mulher", romance, 1990, 119).
filme("Sexto sentido", suspense, 2001, 108).
filme("A cor púrpura", drama, 1985, 152).
filme("Copacabana", comédia, 2001, 92).
filme("E o vento levou", drama, 1939, 233).
filme("Carrington", romance, 1995, 130).
filme("sdfs", romance, 2021, 130).


clássico(T,G,A,D) :- filme(T,G,A,D), A =< 1985.
clássico(T,G) :- filme(T,G,A,_), A =< 1985.

filmeLongo(T,G,A,D) :- filme(T,G,A,D), D >= 150.

ehLancamento(T,G,A,D) :- filme(T,G,A,D),  2022 - A =< 1.

% país(Nome, Área, População)
país(brasil, 9, 130).
país(china, 12, 1800).
país(eua, 9, 230).
país(índia, 3, 450).
%densidade de cada pais
%dens(País,densidade)
dens(P,D) :- país(P,A,O), D is O/A.

ehMaior(P1, P2) :- país(P1,_,O1), país(P2,_,O2), O1 > O2.

% func(Código, Nome, Salário)
func(1, ana, 1000.90).
func(2, bia, 1200.00).
func(3, ivo, 903.50).
func(4, joao, 2900.00).
func(5, ary, 2900.00).
func(6, raí, 1200).
% dep(Código, Nome)
dep(1, ary).
dep(3, raí).
dep(3, eva).

temSalario(N,C) :- func(C,N,S), S >= 1500,  S =< 3000.

naoTemDependente(C,N) :- func(C,N,S), S =< 1200,  not(dep(C,_)).

dependeFunc(C,D,S) :- func(C,_,_), dep(C,D), func(_,D,S), S >= 1700.


%pessoa(nome, genero,idade,altura,peso)
pessoa(ana, f, 23, 1.55, 56.00).
pessoa(bia, f, 19, 1.71, 61.3).
pessoa(ivo, m, 22, 1.80, 70.5).
pessoa(lia, f, 17, 1.85, 57.3).
pessoa(eva, f, 28, 1.75, 68.7).
pessoa(ary, m, 25, 1.72, 68.9).

ehMulherMaiorQueVinte(N,I) :- pessoa(N,f,I,_,_), I >= 20.

regraB(N,A,P) :- pessoa(N,_,_,A,P), A >= 1.70, P =< 65.


homemMaisAlto(H,M) :- pessoa(H,m,_,AH,_), pessoa(M,f,_,AM,_), AH > AM.

modelo(N) :- pessoa(N,f,I,A,P), I < 25, A >= 1.70, P =< (62.1*A - 44.7).


