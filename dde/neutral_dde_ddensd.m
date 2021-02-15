%% Solving system of ddes with neutral delays using ddensd
% Equations as y1Prime = y2(t), yPrime = 1 + y(t) - 2y(t/2)^2 - yPrime(t-pi)

t0=0;
tf =pi;

%ddensd function
sol = ddensd(@ddefunc, @ydelays, @ypdelays, @yhist, [t0 tf]);

%For getting solution from ddensd to plot
t = linspace(t0,tf,100);
y = deval(sol, t);

plot(t,y, 'linewidth', 2.5)
legend('y1', 'y2', 'y3')

% defining the delay associated with yPrime
function d = ypdelays(t,~)

d = t-pi;

end

% defining the delay associated with y
function d = ydelays(t,~)

d = t/2;

end

%function defining the DDE
function yPrime = ddefunc(~, y, yl, ypl)

yPrime = 1 + y - 2*yl^2 - ypl;

end

%Function for defining history of y for all t < = 0
function y = yhist(t)

y= cos(t);

end
