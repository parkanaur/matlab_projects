

%% 1

a = [1.2;-3.2;0.7]
b = [4.1;6.5;-2.9]

c = cross(a,b);

%% 2

cross(a,b) + cross(b,a)

%% 3 
clear;
a = [3.5 0 0];
b = [0.5 2.1 0];
c = [-0.2 -1.9 2.8];

% mixed a b c = sum(a.*(cross(b,c))) /// a*(b x c)

ans = sum(a.*(cross(b,c)));

%% 4

 % inside a b = sum(a.*b) // dot which is scalar
 
 an1 = sum(a.*b)
 an2 = dot(a,b)
 
 %% 5 
 clear;
 a = [1 2 3];
 b = [4 5 6];
 c = [9 8 7];
 
 vol = abs(dot(a, cross(b,c)))
 
 %% 6
 
%  A = [2 1;2 1]
%  B = [3 1;1 3]
%  
%  A*B

% outside = a*transpose(b)


a = [1 2 3]
b = [4 4 5 5]
bt = b'
bt2 = transpose(b)
ans = a.*bt
% ans = a*transpose(b)
transpose(ans)

ans_total = (a.*b')'

%% 7

figure;
grid on; hold on;axis equal;

eps = [0.5 1 2];

theta = -pi:0.1*pi:pi;
rho1 = 1 ./ (1 - eps(1)*cos(theta));
rho2 = 1 ./ (1 - eps(2)*cos(theta));
rho3 = 1 ./ (1 - eps(3)*cos(theta));

[x,y] = pol2cart(theta, rho1);
plot(x,y);

[x,y] = pol2cart(theta, rho2);
plot(x,y);

[x,y] = pol2cart(theta, rho3);
plot(x,y);

%% 8



eps = [0.5 1 2];

theta = -pi:0.05*pi:pi;
rho1 = 1 ./ (1 - eps(1)*cos(theta));
rho2 = 1 ./ (1 - eps(2)*cos(theta));
rho3 = 1 ./ (1 - eps(3)*cos(theta));

% z = theta;

figure;
grid on; hold on; %axis equal;
[x,y,z] = pol2cart(theta, transpose(rho1), theta);
plot3(x,y,z);
view([-45 45]);

figure;
grid on; hold on; %axis equal;
[x,y,z] = pol2cart(theta, transpose(rho2), theta);
plot3(x,y,z);
view([-45 45]);

figure;
grid on; hold on; %axis equal;
[x,y,z] = pol2cart(theta, transpose(rho3), theta);
plot3(x,y,z);
view([-45 45]);

%% 9

figure;
grid on;axis equal;

theta = -pi:0.01*pi:pi;
% x = 10:10:100

[a, b] = meshgrid(theta,theta);

rho = 1;

[x,y,z] = sph2cart(a, b, rho);

plot3(x,y,z);

%% 10
clear;
figure;
grid on;axis equal;

theta = -pi:0.01*pi:pi;
% theta = transpose(-pi:0.01*pi:pi);

[a, b] = meshgrid(theta,theta);

rho = 1;

[x,y,z] = sph2cart(a, b, rho);

plot3(x,y',z); % important stuff but why so???
view([-92 32])

%% 
