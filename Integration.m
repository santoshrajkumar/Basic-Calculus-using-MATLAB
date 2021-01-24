%% Integrals
%---------------S.M. Rajkumar----------------

%% compute integration of symbolic function
syms x
f = sin(x);
intf = int(f);

% plot the function & integral
subplot(211)
fplot(f, 'linewidth',2.5), hold on
fplot(intf, 'linewidth',2.5)
legend(['f(x) =' char(f)], ['\int f= ' char(intf)])


%% Compute partial integration

syms x y
q = x^2 * y^3;

%compute partial integral w.r.t x
xintq = int(q,x)
%compute partial integral w.r.t y
yintq = int(q,y)

% compute value of partial integral w.r.t. x at x=4 & y=-2.5
subs(xintq, [x y], [4 -2.5])


