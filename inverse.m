
function xInv = inverse(x,p)
% ModInv(x,n) computes the multiplicative inverse of x modulo n if one
% exists; errors if no such inverse exists
if gcd(x,p) ~= 1
    xInv = gcd(x,p)
    error('x has no inverse modulo n so the answer has been set as the GCD(L2,p)')
end

[d, a, b]   = gcd(x,p);
xInv        = mod(a,p);
end