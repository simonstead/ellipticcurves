function F = pointdouble( P, a, p)
%POINTMULT Summary of this function goes here
%   Detailed explanation goes here

x = P(1);
y = P(2);

L1 = 3*x*x + a;
L2 = 2*y;
L2 = inverse(L2,p);
L = mod(L1*L2, p);



x3 = mod(L*L - 2*x, p);
y3 = mod(L*L*(x3-x) + y, p);

F = [x3,y3];
end

