function uPrime = ivp2(x,u)

uPrime = zeros(2,1);
uPrime(1) = u(2);
uPrime(2) = (pi^2)*u(1);
end
