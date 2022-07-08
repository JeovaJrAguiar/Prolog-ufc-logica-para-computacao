% Programação lógica com Prolog
% Autor: Aguiar  Data: 08.07.2022
% Universidade Federal do Ceará - campus Crateús
% 
% Programa questão 02
/* pais(Nome, area, populacao) */
pais('Brasil', 9, 130).
pais('China', 12, 1800).
pais('EUA', 9, 230).
pais('India', 3, 450).

% Densidade demográfica de cada um dos países;
dens(N,D) :- pais(N,A,P), D is P/A.

% consulta: densidade demográfica de cada um dos países.
% dens(N,D).

% consulta: Índia é mais populosa que a China
% pais('India',_,PopIndia),pais('China',_,PopChina), PopIndia > PopChina
