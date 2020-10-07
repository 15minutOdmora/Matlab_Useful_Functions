function [Q, R, ksi] = householder_qr(A)
% Razširjen Householderjev QR razcep, iz predavanj
    [m, n] = size(A);
    Q = eye(m);
    for j=1:n
       k = norm(A(j:m,j));
       ksi = k * (k +abs(A(j,j)));
       w = A(j:m,j);
       w(1) = w(1)+predznak(A(j,j))*k;
       A(j:m,j:n) = A(j:m,j:n)-(1/ksi)*w*(w'*A(j:m,j:n));
       Q(j:m,:) = Q(j:m,:)-(1/ksi)*w*(w'*Q(j:m,:));
    end
    Q = Q';
    R = A;
end
