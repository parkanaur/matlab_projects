% Задание 1
figure;
axis([-1 1 -1 1 0 50]);
t = 0:100;
x1 = exp(1).^(-abs(t-100)/100).*sin(t);
y1 = exp(1).^(-abs(t-100)/100).*cos(t);
z1 = t;
plot3(x1,y1,z1); grid on;

% Задание 2
figure;
v = -4*pi:0.1*pi:4*pi; u = transpose(v);
x2 = 0.5*u*cos(v); y2 = 0.5*u*sin(v);
z2 = u;
plot3(x2,y2,z2); grid on;

% Задание 3
figure;
v = -2*pi:0.1*pi:2*pi; u = transpose(v);
x3 = cos(u)*cos(v); y3 = 0.7*cos(u)*sin(v);
z3 = 0.8*sin(u);
plot3(x3,y3,z3); grid on;

% Задание 4/5
fig4 = figure;
t = 0:0.2:2; ux0 = 0.5; uy0 = 0.8;
x = ux0*t; y = uy0*t-0.4*(t.^2);
ux(1:length(x)) = 0.5;
uy = 0.8*(1-t);
figure(fig4); hold on;
quiver(x,y,ux,uy, 0);
quiver(x,y,ux,uy, 1.5);
quiver(x,y,ux,uy, 3);
grid on;

% Задание 6/7
figure;
t = 0:0.2:2; ux0 = 0.5; uy0 = 0.8;
x = ux0*t; y = uy0*t-0.4*(t.^2);
ux(1:length(x)) = 0.5;
uy = 0.8*(1-t);
subplot(1,2,1);
compass(ux,uy); grid on;
subplot(1,2,2);
feather(ux,uy); grid on;

% Задание 8
figure;
u = (-pi:pi/15:pi)';
v = -pi:pi/15:pi;
X = sin(u)*cos(v); Y = sin(u)*sin(v);
Z = cos(u)*ones(size(v));
surf(2*X, 2*Y, 2*Z);
[U, V, W] = surfnorm(2*X, 2*Y, 2*Z);
hold on;
quiver3(2*X,2*Y,2*Z,U,V,W,4,'k');