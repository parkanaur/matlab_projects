% Задание 1
a = [1.2 -3.2 0.7]; b = [4.1 6.5 -2.9];
cross(a, b)

% Задание 2
a = [1.2 -3.2 0.7]; b = [4.1 6.5 -2.9];
cross(a, b) + cross(b, a)

% Задание 3
a = [3.5 0 0]; b = [0.5 2.1 0]; c = [-0.2 -1.9 2.8];
dot(a, cross(b, c))

% Задание 4
a = [3.5 0 0]; b = [0.5 2.1 0];
dot(a, b)

% Задание 5
a = [1 2 3]; b = [4 5 6]; c = [9 8 7];
V = abs(dot(a, cross(b, c)))

% Задание 6
a = [1 2 3]; b = [4 4 5 5];
a.*transpose(b)

% Задание 7
phi = -pi:0.1*pi:pi; e = [0.5 1 2];
% rho(1-e*cos(phi)) = a => rho = a / (1-e*cos*phi)
rho1 = 1 ./ (1-e(1).*cos(phi));
rho2 = 1 ./ (1-e(2).*cos(phi));
rho3 = 1 ./ (1-e(3).*cos(phi));
figure; hold on; grid on; axis equal;
plot(pol2cart(phi, rho1));
plot(pol2cart(phi, rho2));
plot(pol2cart(phi, rho3));

% Задание 8
phi = -pi:0.05*pi:pi; e = [0.5 1 2];
rho1 = 1 ./ (1-e(1).*cos(phi));
rho2 = 1 ./ (1-e(2).*cos(phi));
rho3 = 1 ./ (1-e(3).*cos(phi));
figure; hold on; grid on;
[x, y, z] = pol2cart(phi, transpose(rho1), phi);
plot3(x,y,z);
view([-45 45])
figure; hold on; grid on;
[x, y, z] = pol2cart(phi, transpose(rho2), phi);
plot3(x,y,z);
view([-45 45])
figure; hold on; grid on;
[x, y, z] = pol2cart(phi, transpose(rho3), phi);
plot3(x,y,z);
view([-45 45])

% Задание 9
phi = -pi:0.01*pi:pi;
[a, b] = meshgrid(phi, phi);
rho = 1+0*a;
[x, y, z] = sph2cart(a, b, rho);
figure; hold on; grid on;
plot3(x,y,z);
view([-45 45])

% Задание 10
phi = transpose(-pi:0.01*pi:pi);
[a, b] = meshgrid(phi, phi);
rho = 1+0*a;
[x, y, z] = sph2cart(a, b, rho);
figure; hold on; grid on;
plot3(x,y,z);
view([-45 45])
