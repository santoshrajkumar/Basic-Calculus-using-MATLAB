function yPrime = massInOil(t,y)

c = 4;
k=4;
m=1;

yPrime = zeros(2,1);
yPrime(1)= y(2);
yPrime(2) = -k*y(1)./m -c*y(2)./m ;
end
