%% Solving system of ddes with constant delays using dde23
% Three equations as y1Prime = y1(t-1), y2Prime = y1(t) - y1(t-1) + y2(t-0.5), y3Prime = y2(t) - y39t)

lags = [1 0.5]; % as there are two constant lags
tf =5;

%dde23 function
sol = dde23(@ddefunc, lags, @yhist, [0 tf]);

%For getting solution from dde23 to plot
t = linspace(0,tf,100);
y = deval(sol, t);

plot(t,y, 'linewidth', 2.5)
legend('y1', 'y2', 'y3')

%function defining the DDE yl = y(t-1)
function yPrime = ddefunc(t, y, yl)

yl1 = yl(:,1); %lag 1
yl2 = yl(:,2); %lag 0.5

yPrime = [yl1(1) %eq1
          y(1) - yl1(1) + yl2(2) %eq2
          y(2) - y(3)]; %eq3

end

%Function for defining history of y for all t < = 0
function y = yhist(t)

y= [1 0 -1]';

end