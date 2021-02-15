%% Solving system of ddes with state-dependent delays using ddesd
% Equations as y1Prime = y2(t), y2Prime = -y2(tau)* y2(t)^2 * tau (Where, tau = e^(1 - y2(t))

t0=0.1; % can take zero , but we took this as one of our history function has log(t)
tf =5;

%dde23 function
sol = ddesd(@ddefunc, @delays, @yhist, [t0 tf]);

%For getting solution from dde23 to plot
t = linspace(t0,tf,100);
y = deval(sol, t);

plot(t,y, 'linewidth', 2.5)
legend('y1', 'y2', 'y3')

% defining the state dependent delay
function d = delays(t,y)

d = exp(1 - y(2));

end

%function defining the DDE yl = y(t-1)
function yPrime = ddefunc(t, y, yl)

yPrime = [y(2)
         -yl(2) * y(2)^2 * exp(1-y(2))]; 

end

%Function for defining history of y for all t < = 0
function y = yhist(t)

y= [log(t) 1./t];

end
