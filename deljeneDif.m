function d = deljeneDif(X,Y)
n = length(X);
A(:,1) = X;
A(:,2) = Y;
k = 0;
for j = 3:n+1   
    k = k+1;
    for i = 1:n-j+2 
        A(i,j) = (A(i+1,j-1)-A(i,j-1))/(A(i+k,1)-A(i,1));
    end
end
d = A(1,2:end);
end
