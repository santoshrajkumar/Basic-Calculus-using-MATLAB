%% Solve the equation in vanderPol.m file
tspan = [0 20];
y0 = [2 0];

[t,y] = ode45(@vanderPol, tspan, y0);
plot(t,y(:,1),'color', 'g', 'linew', 2.5)
hold on
plot(t,y(:,2),'color', 'r', 'linew', 2.5)
title('Solution of van der Pol equation')
legend('y', 'y_1')