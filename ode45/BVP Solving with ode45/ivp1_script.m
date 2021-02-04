tspan = 0:0.25:1;
u0 = [0 0];



[x,u] = ode45(@ivp1, tspan, u0);

plot(x,u(:,1),'r', 'linewidth', 2.5)
xlabel('x', 'interpreter', 'latex')
ylabel('solution (u)', 'interpreter', 'latex')
set(gca, 'fontsize', 25)
legend('u1 (from IVP 1)')
legend boxoff
hold on
box off

u1 = u(:,1)