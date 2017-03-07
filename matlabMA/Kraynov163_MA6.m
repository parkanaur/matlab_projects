% Задание 1
disp(poly2sym(conv([1 1 0 0 1 3], [1 2 1 -10])))

% Задание 2
disp(poly2sym(deconv([1 1 0 0 0 0 1 -1], [1 2 -1])))

% Задание 3
[d, r] = deconv([1 1 1 -3 -2 -116 -1], [1 0 -116 1]);
disp(poly2sym(r))

% Задание 4 - MA6_4.m
disp(poly2sym(MA6_4([1 2 4 2 3 0 1 3], [1 0 2 -3 -9])))

% Задание 5
disp(poly2sym(MA6_4([1 0 2 0 4 0 2 0 3 3], [-1 0 0 0 0 0 0 -2 0 0])))

% Задание 6
disp(poly2sym(polyder([1 0 0 0 0 3 1 -10 -1 1024])))

% Задание 7
x = [0.1 0.3 0.4 0.6 0.7 0.9 1.0 1.3 1.6 2.0];
y = [-3 -5 -2 -1 0 1 3.5 6 2.5 8];
figure; grid on; hold on;
plot(x, y)
plot(x, y, 'ko')
p3 = polyfit(x, y, 3);
p4 = polyfit(x, y, 4);
p5 = polyfit(x, y, 5);
p6 = polyfit(x, y, 6);
p7 = polyfit(x, y, 7);
t = 0.1:0.01:1.2;
P3 = polyval(p3, t);
P4 = polyval(p4, t);
P5 = polyval(p5, t);
P6 = polyval(p6, t);
P7 = polyval(p7, t);
plot(t, P3, 'k-', t, P4, 'k:', t, P5, 'k-.', ...
    t, P6, '--gs', t, P7, 'r:')
legend('график', 'точки', 'p3', 'p4', 'p5', 'p6', 'p7')

% Задание 8
x = [0.1 0.3 0.4 0.6 0.7 0.9 1.0 1.3 1.6 2.0];
y = [-3 -5 -2 -1 0 1 3.5 6 2.5 8];
figure; grid on; hold on;
plot(x, y, 'ko')
xi = [x(1):0.01:x(10)];
ynear = interp1(x, y, xi, 'nearest');
yline = interp1(x, y, xi, 'linear');
yspl = interp1(x, y, xi, 'spline');
ypch = interp1(x, y, xi, 'pchip');
plot(xi, ynear, 'k', ...
    xi, yline, 'k:', ...
    xi, yspl, 'b-.', ...
    xi, ypch, 'r')
legend('функция', 'nearest', 'linear', 'spline', 'pchip')

% Задание 9
[X, Y] = meshgrid(0:0.2:1);
Z = sin(3*pi*X).*sin(3*pi*Y).*exp(-X.^2-Y.^2);
[Xi, Yi] = meshgrid(0:0.02:1);
figure('units','normalized', 'position',[.2 .2 .5 .5]);

subplot(2, 3, 1);
title('функция');
surfl(X, Y, Z);
view([45 45]);

subplot(2, 3, 2);
title('nearest');
near = interp2(X, Y, Z, Xi, Yi, 'nearest');
surfl(Xi, Yi, near);
view([45 45]);

subplot(2, 3, 3);
title('linear');
near = interp2(X, Y, Z, Xi, Yi, 'bilinear');
surfl(Xi, Yi, near);
view([45 45]);

subplot(2, 3, 4);
title('cubic');
near = interp2(X, Y, Z, Xi, Yi, 'bicubic');
surfl(Xi, Yi, near);
view([45 45]);

subplot(2, 3, 5);
title('spline');
near = interp2(X, Y, Z, Xi, Yi, 'spline');
surfl(Xi, Yi, near);
view([45 45]);
