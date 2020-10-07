function pA = psevdoinverz(A)

[U, S, V] = svd(A);
[s, l] = size(diag(S));
S = S';
for i=1:s
    if S(i, i)>10^-15:
        S(i, i) = 1/S(i, i);
    end   
end
pA = V*S*U';
