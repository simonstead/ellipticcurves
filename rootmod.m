function F = rootmod( a,p )
%ROOTMOD Summary of this function goes here
%   Detailed explanation goes here

for x=0:p

    if mod(x^2,p) == a
        F = x;
        break;
    end

end

