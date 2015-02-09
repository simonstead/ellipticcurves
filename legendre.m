function S = legendre(a,p)


% there are a few special cases to look at.
if p == 2
  % do we have p == 2?
  % if a is even, then the legendre symbol is zero.
  % if a is odd, then a is a quadratic residue.
  if iseven(a)
    S = 0;
  else
    S = 1;
  end
    elseif mod(a,p) == 0
  % reduce a modulo p to check if the result is zero
  % if the mod is zero, then so is the Legendre symbol.
  S = 0;
else
  % p must now be an odd prime.
  % simplest is just to use little Fermat, which
  % will generate either +1 or p-1 (mod p)
  S = mod(a^((p-1)/2),p);
  if S == 1
    % S was 1, therefore a was a quadratic residue mod p
    S = 1;
  else
    % S must be p-1, which is equivalent to -1 (mod p)
    S = -1;
  end
end

