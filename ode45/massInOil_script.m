% Solve the equation from massInOil.m file

c = input('Enter value of c :  ');
k=input('Enter value of c :  ');
m=input('Enter value of c :  ');

tspan = [0 10];
y0 = [1 0];

% extra parameters c,k,m are passed into the ode function
[t,y] = ode45(@(t,y) massInOil(t,y,c,k,m), tspan, y0);

plot(t,y(:,1),'linewidth', 2.5)