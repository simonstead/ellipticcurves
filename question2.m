% % upperbound
p = 100000007;
iterations = 0;
while p > 1000
    p = (p + 1 + 2*sqrt(p))*0.5;
    iterations = iterations + 1;
end

% % lowerbound
q = 100000007;
iterations2 = 0;
while q > 1000
    q = (q + 1 - 2*sqrt(q))*0.5;
    iterations2 = iterations2 + 1;
end

iterations
iterations2

% iteration = iterations2 = 17, so the lower bound and upper bound are both
% 17.