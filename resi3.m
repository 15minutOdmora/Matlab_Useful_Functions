function [x,M] = resi3(M,d)

% function [x,M] = resi3(M,d)

%

% resi3: resevanje tridiagonalnega sistema, predstavljenega

% samo s tremi vektorji in desno stranjo

%

% x je resitev sistema, M je matrika diagonal dim. nx3, v prvem

% stolpcu je spodnja obdiagonala (nicla na mestu (1,1)),

% v drugem diagonala, v tretjem pa zgornja obdiagonala (nicla

% na mestu (n,3)

% d je desna stran sistema



n=length(d);

x=zeros(n,1);

% eliminacije

for i=2:n

    faktor=M(i,1)/M(i-1,2);

    M(i,2)=M(i,2)-faktor*M(i-1,3);

    d(i)=d(i)-faktor*d(i-1);

end

% obratno vstavljanje

x(n)=d(n)/M(n,2);

for i=n-1:-1:1

    x(i)=(d(i)-x(i+1)*M(i,3))/M(i,2);

end