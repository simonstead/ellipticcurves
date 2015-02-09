function F = generatepoints( a,b,p )
%GENERATEPOINTS Summary of this function goes here
%   Detailed explanation goes here

points = [];

for x=0:p-1
    
    ysquared = mod(x^3 + a*x + b,p);
    
    if legendre(ysquared, p) == 1
        y = rootmod(ysquared,p);
        points = [points; [x,y]; [x,p-y]];
        
        
        
    end
end

F = points;
end
