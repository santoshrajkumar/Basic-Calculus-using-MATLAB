function yPrime = vanderPol(t,y)
mu = 1;
yPrime = zeros(2,1);
yPrime(1) = y(2);
yPrime(2) = mu*(1-y(1)^2)*y(2)-y(1)
end

