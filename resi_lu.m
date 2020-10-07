function x = resi_lu(A,b)
% Z uporabo lu_razcep funkcje resi sistem Ax=b ter vrne x
    [L, U] = lu_razcep(A);
    n=size(A,1);
    % prema substitucija
    y = b;
    for i = 2: n
        for k = 1: i -1
            y(i) = y(i) - L(i, k) * y(k);
        end
    end
    % obratna substitucija
    x = y;
    for i = n : -1: 1
        for k = i + 1: n
            x(i) = x(i) - U(i, k) * x(k);
        end
        x(i) = x(i) / U(i, i);
    end
end