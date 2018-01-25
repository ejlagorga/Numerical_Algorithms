function [nXk] = SGD(xk)
%IGD Summary of this function goes here
%   Detailed explanation goes here
m = 10;
n = 2;
eta = 1;
[A, b] = generate_Ab(m, n, eta);
%evaluate = @(x,i) (1/2)*x'*A{i}*x - b{i}'*x;
gradient = @(x,i) (1/2)*(A{i}+A{i}')*x - b{i};
y = 1; 
L = 100;
a = 2/(y+L);
nXk = [];
x = [0.043050527109744; 0.485640581896102];

for k = 0:499
    nXk = [nXk; log(norm(xk - x))];
    %for j = 1:m
    %    i = randi(m);
    %    xk = xk - a*gradient(xk,i);
    %end
    i = randi(m);
    xk = xk - a*gradient(xk,i);
end

end

