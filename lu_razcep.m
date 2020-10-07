function [L, U] = lu_razcep(A)
% Funkcija kot parameter prejme kvadratno matriko A
% Ter vrne [L, U] matriki 
    n=size(A,1);
    for j=1:n-1
        for i=j+1:n
            A(i, j)=A(i,j)/A(j,j);
            for k=j+1:n
                A(i,k)=A(i,k)-A(i,j)*A(j,k);
            end
        end
    end
    L=tril(A,-1)+eye(n);
    U=triu(A);
end