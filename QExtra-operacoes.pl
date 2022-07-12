Last login: Tue Jul 12 15:43:31 on ttys000
naxos:~ aguiar$ nano






















  GNU nano 2.0.6                New Buffer                            Modified  

% ----------------------------------------------------------------------------
% 1 - Crie uma regra para ober o primeiro elemento de uma lista, primeiro(X,L),
% onde o X eh o primeiro elemneto da lista L.

primeiro( [X|Y] , P ) :- R = X.
% ou
primeiro( [X,_] , X).

% consulta: primeiro( [a,b,c,d] , X).
% consulta: primeiro( [a,b,c,d] , X).

% ---------------------------------------------------------------------------
% 2 - Crie uma regra para obter o ultimo elemento de uma lista, ultimo(X,L),
% onde X eh o ultimo elemento da lista L

ultimpo( X , [X] ).
ultimo( X , [_|Y] ) :- ultimo( R , Y ).

% consulta: ultimo( X , [a,b,c,d,e,f])

^G Get Help  ^O WriteOut  ^R Read File ^Y Prev Page ^K Cut Text  ^C Cur Pos
^X Exit      ^J Justify   ^W Where Is  ^V Next Page ^U UnCut Text^T To Spell
