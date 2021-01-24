%% ODE with single solution component

% Solve dy/dt = 2t for time interval 0-5 and initial condition y0 = 0

tspan = [0 5];
y0=0;
[t,y] = ode45(@(t,y) 2*t, tspan, y0);

subplot(211)
plot(t,y, '-o')
title('dy/dt = 2t')

% Solve dy/dt = e^t*sin(t) for time interval 0-5 and initial condition y0 = 0
tspan = [0 8];
y0=0;
[t,y] = ode45(@(t,y) exp(t)*sin(t), tspan, y0);

subplot(212)
plot(t,y, '-o')
title('dy/dt = e^t')