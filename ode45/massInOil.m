function yPrime = massInOil(t,y,c,k,m)
yPrime = zeros(2,1);
yPrime(1)= y(2);
yPrime(2) = -k*y(1)./m -c*y(2)./m ;
end
