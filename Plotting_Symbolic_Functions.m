%% Plotting Symbolic Functions
%---------------- S.M. Rajkumar--------------------

clc, clear

%% using ezplot
f = '5*cos(x)';
subplot(221)
p = ezplot(f, [-15 5]); % [-15 5] is the range of x
set(p, 'linewidth', 2.5)
title('ezplot')

%% using fplot
fy = @(y) 10*sin(y) + tan(y);
subplot(222)
p = fplot(fy, [-10 10]);
set(p, 'linewidth', 2.5)
title('fplot')

%% using fimplicit (fimplicit3 for 3d)
fxyz = @(x,y,z) exp(x*y) + y*z - x*y^(3/4);
subplot(223)
p = fimplicit3(fxyz);
rotate3d on, axis image;
title('fimplicit')

%% polar plot
fp = @(theta) 4*(1-sin(theta));
subplot(224)
p =ezpolar(fp);
set(p, 'linewidth',2.5,'color','r')
title('ezpolar')

