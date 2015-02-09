function F = addpoints(P1, P2,a, p)
%ADDPOINTS Summary of this function goes here
%   Detailed explanation goes here

    
x1 = P1(1);
y1 = P1(2);
x2 = P2(1);
y2 = P2(2);

if (x1 == x2) && (y1 == y2)
    F = pointdouble(P1,a,p);
end

L1 = mod(y1-y2, p);
L2 = mod(x1-x2, p);
L2 = inverse(L2, p);
L = mod(L1*L2, p);

x3 = mod(L*L - x1 - x2, p);
y3 = mod(L*L*(x3-x1) + y1, p);

F = [x3,y3]
end

