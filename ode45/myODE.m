function yPrime = myODE(t,y)
yPrime = zeros(3,1);
yPrime(1) = y(2);
yPrime(2) = y(3);
yPrime(3) = -8*y(1) + 6*y(2)+ 2*y(3) + 7;
end

