a=1;
b=7;
prime = 9197;
points = generatepoints(a,b,prime);
k = 12;
P = points(1,:);

P2 = pointdouble(P, a, prime);



% P4 = pointdouble(P2, a, prime);
% 
% Uncomment this to show that calculating 4P throws an error, 
% implying the GCD of L2 and p is not 1.
% Hence gcd(L2, p) divides p. Hence p is composite, and we can see that: 

gcd = gcd(2*P2(2), prime)

prime/gcd

% And so 9197 = 17*541.



