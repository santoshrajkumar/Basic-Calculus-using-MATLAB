tspan = 0:0.25:1;
u0 = [0 1];

[x,u] = ode45(@ivp2, tspan, u0);


plot(x,u(:,1),'b', 'linewidth', 2.5)
xlabel('x', 'interpreter', 'latex')
ylabel('solution (u)', 'interpreter', 'latex')
set(gca, 'fontsize', 25)
legend('u2 (from IVP 2)')
legend boxoff
hold on
box off