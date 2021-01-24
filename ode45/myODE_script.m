
% Using the ode45 solver to solve the equation defined in myODE.m file
tspan = [0 2];
y0 = [5 0 0];

[t,y] = ode45(@myODE, tspan, y0);

plot(t,y(:,1), 'linewidth',2.5)

%uncomment the below lines to see the other solutions

% hold on
% plot(t,y(:,2), 'linewidth',2.5, 'color', 'r')
% plot(t,y(:,3), 'linewidth',2.5, 'color', 'g')
