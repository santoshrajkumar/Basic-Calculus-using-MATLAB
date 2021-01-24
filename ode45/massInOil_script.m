% Solve the equation from massInOil.m file
tspan = [0 10];
y0 = [1 0];

[t y] = ode45(@massInOil, tspan, y0);

plot(t,y(:,1),'linewidth', 2.5)