%% Basic DDE solving using dde23
% the dde is yPrime(t) - 2y(t) + y(t-1) +1 =0
% Here, t-lags, i.e. lags =1



lags = 1;
tf =5;

%dde23 function
sol = dde23(@ddefunc, lags, @yhist, [0 tf]);

%For getting solution from dde23 to plot
t = linspace(0,tf,100);
y = deval(sol, t);

plot(t,y, 'linewidth', 2.5)

%function defining the DDE yl = y(t-1)
function yPrime = ddefunc(t, y, yl)

yPrime = 2*y - yl -1;

end

%Function for defining history of y for all t < = 0
function y = yhist(t)

y= -t;

end
