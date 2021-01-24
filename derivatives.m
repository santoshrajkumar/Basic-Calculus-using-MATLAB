%% Derivatives
%---------------S.M. Rajkumar----------------

%% compute derivative of symbolic function
syms x
f = sin(x);
df = diff(f);

% plot the function & its derivative
subplot(211)
fplot(f, 'linewidth',2.5), hold on
fplot(df, 'linewidth',2.5)
legend(['f(x) =' char(f)], ['df= ' char(df)])

%find value of the function at a specified point
x1 = pi/3;
subs(f,x1)
subs(df,x1)

%% Compute derivative with numeric variable
Ts = 0.001 %sample time
t = -6:Ts:6;
q = sin(t);
dq = diff(q)*(1/Ts); % need to multiply 1/Ts for scalling purpose

% plot the function & its derivative
subplot(212)
plot(t,q,'linewidth',2.5), hold on
plot(t(1:end-1),dq,'linewidth',2.5)
legend('q(t)', 'dq')