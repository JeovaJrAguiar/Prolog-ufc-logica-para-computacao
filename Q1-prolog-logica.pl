% Programação lógica com Prolog
% Autor: Aguiar  Data: 08.07.2022
% Universidade Federal do Ceará - campus Crateús
% 
% Programa questão 01
% filme(Título, Gênero, Ano, Duração)
filme('Uma linda mulher', romance, 1990, 119).
filme('Sexto sentido', suspense, 2001, 108).
filme('A cor púrpura', drama, 1985, 152).
filme('Copacabana', comédia, 2001, 92).
filme('E o vento levou', drama, 1939, 233).
filme('Carrington', romance, 2021, 130).

% Apenas os nomes e os gêneros dos filmes clássicos
clássico(T,G) :- filme(T,G,A,_), A =< 1985.

% Um filme é longo se tem duração superior a 150 minutos
longo(T,D) :- filme(T,_,_,D), D > 150.

% Um filme é lançamento se foi lançado a menos de 1 ano.
lancamento(T,A) :- filme(T,_,A,_), A >= 2021.