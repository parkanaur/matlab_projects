% Задание 1 - MA5_1.m
figure; grid on; hold on;
x = 0:0.1:4;
y = MA5_1(x);
plot(x,y);

% Задание 2
figure; grid on; hold on;
x = 0:0.1:10;
y = MA5_1(x);
plot(x,y, 'LineWidth', 4); hold on; grid on;
fplot(@MA5_1, [0 10], 'LineWidth', 2);
help MA5_1
lookfor MA5_1

% Задание 3 - MA5_3.m; массив в квадратных скобках
userArr = input('array: ');
arrSum = MA5_3(userArr)

% Задание 4 - MA5_4.m
figure; grid on; hold on;
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
fplot(@MA5_4, [-5 5])
root0 = fzero(@MA5_4, -5)
root1 = fzero(@MA5_4, [-2 -1])
root2 = fzero(@MA5_4, 0)
root3 = fzero(@MA5_4, [4 5])

% Задание 5
polyn = [1 0 0 0 0 3 1 -10 -1 1024];
r5 = roots(polyn)
a5 = polyval(polyn, r5)

% Задание 6
f6 = inline('exp(x.^2)+sin(3*pi*x)');
x6 = -1.7:0.05:1.7;
figure; grid on; hold on;
plot(x6, f6(x6))
[xmin1, ymin1] = fminbnd(f6, -1, -0.5)
[xmin2, ymin2] = fminbnd(f6, -0.5, 0)
[xmin3, ymin3] = fminbnd(f6, 0, 1)
[xmin4, ymin4] = fminbnd(f6, 1, 1.5)

% Задание 7
f7 = @(x) x.^2+1;
figure; grid on; hold on;
fplot(f7, [-500 500])
[xmin, ymin] = fminbnd(f7, -5, 5)

% Задание 8 - MA5_8.m
[X, Y] = meshgrid(0:0.01:2);
f8 = sin(pi*X).*sin(pi*Y);
figure; hold on;
[c, h] = contour(X,Y,f8,[-0.96, -0.9, -0.8, ...
    -0.5, -0.1, 0.1, 0.5, 0.8, 0.9, 0.96]);
clabel(c, h);
min1 = fminsearch(@MA5_8, [1.4, 0.6])
min2 = fminsearch(@MA5_8, [0.5, 1.5])

figure; grid on; hold on;
[X1, Y1] = meshgrid(0:0.1:5);
f8_1 = sin(pi*X1).*sin(pi*Y1);
surf(X1, Y1, f8_1);
view([45 45])
