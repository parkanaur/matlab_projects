% Задание 1
f = @(x) sin(x)-(x.^2).*cos(x);
integral(f, -5, 0, 'AbsTol', 1.0e-05)
 
% Задание 2
f = @(x) x.^3+1;
integral(f, 1, 4)
 
% Задание 3
f = @(x,y) exp(-x).*sin(y);
integral2(f, 0, 1, -pi, pi, 'AbsTol', 1.0e-05)
dblquad(f, 0, 1, -pi, pi, 1.0e-05)
 
% Задание 4
figure;
z = @(x,y) sin(x).*cos(y).*(1-y.^2).*x.*(1-x);
integral2(z, -2, 2, -2, 2)
x = -2:0.1:2; y = x;
[X,Y] = meshgrid(x,y);
z = sin(X).*cos(Y).*(1-Y.^2).*X.*(1-X);
surf(x,y,z); view([39 39]);
 
% Задание 5
f = @(x,y,z) exp(-x).*sin(y).*cos(z);
integral3(f, 0, 1, -pi, pi, -pi, pi, 'AbsTol', 1.0e-05)
triplequad(f, 0, 1, -pi, pi, -pi, pi, 1.0e-05)
 
% Задание 6
f = @(x,y,z) exp(x).*(sin(y).^2)+exp(-x)...
    .*(cos(y).^2)+sin(y).*cos(x).*z;
integral3(f, -2*pi, 2*pi, -2*pi, 2*pi, -4, 4)
 
% Задание 7
f = @(x) 1./x;
quad(f, 0, 1)
quadl(f, 0, 1)
quadgk(f, 0, 1)
 
% Задание 8
f = @(x, y) 20*cos(x).*(x.^2)+ 7*sin(y).*(y.^2);
integral2(f, -2, 2, -2, 2)

% Задание 9
f = inline('3*(x.^2)+x+1');
quad(f, 0, 10)

% Задание 10 - MA7_10.m
figure; hold on; grid on;
fplot(@MA7_10, [0, pi])

% Задание 11
func11 = @(x) cos(x-sqrt(2)).*exp(2*sin(x))-1;
root0 = fzero(func11, [0 2]);
root1 = fzero(func11, [2 4]);
quad(func11, root0, root1)

% Задание 12
func12 = @(x) sin(x)-(x.^2).*cos(x);
syms x
diffeq = diff(sin(x)-(x.^2).*cos(x));
droot1 = fzero(matlabFunction(diffeq), [-5 -2.5]);
droot2 = fzero(matlabFunction(diffeq), [-2.5 0]);
quad(func12, droot1, droot2);
figure;
fplot(func12, [-5 0]);
grid on;

