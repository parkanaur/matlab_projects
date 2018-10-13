

%% 1
% a+b = b+a
% (a+b)+c = a + (b+c)

figure;
axis equal; grid on; 
% hold on;
a = [2 3 4];
b = [3 5 2];
c = [1 1 1];

subplot(1, 2, 1);

ab = a+b;
bc = b+c;
% 
% quiver3(0, 0, 0, ab(1), ab(2), ab(3), 1);
% quiver3(ab(1), ab(2), ab(3), c(1), c(2), c(3), 1);

quiver3([0 ab(1)], [0 ab(2)], [0 ab(3)], [ab(1) c(1)], [ab(2) c(2)], [ab(3) c(3)], 0);

% quiver3(0, 0, 0, a(1), a(2), a(3), 1);
% quiver3(a(1), a(2), a(3), bc(1), bc(2), bc(3), 1);

quiver3([0 a(1)], [0 a(2)], [0 a(3)], [a(1) bc(1)], [a(2) bc(2)], [a(3) bc(3)], 0);

%
quiver3([0 ab(1) 0 a(1)], [0 ab(2) 0 a(2)], [0 ab(3) 0 a(3)], [ab(1) c(1) a(1) bc(1)], [ab(2) c(2) a(2) bc(2)], [ab(3) c(3) a(3) bc(3)], 0);
% quiver3();

subplot(1, 2, 2);
axis equal; grid on; 

%%
figure;
axis equal; 
grid on;
% hold on;
% quiver3(0, 0, 0, a(1), a(2), a(3), 1);
% quiver3(a(1), a(2), a(3), b(1), b(2), b(3), 1);
% quiver3(0, 0, 0, b(1), b(2), b(3), 1);
% quiver3(b(1), b(2), b(3), a(1), a(2), a(3), 1);

quiver3([0 a(1) 0 b(1)], [0 a(1) 0 b(1)], [0 a(1) 0 b(1)], [a(1) b(1) b(1) a(1)], [a(1) b(1) b(1) a(1)], [a(1) b(1) b(1) a(1)], 0);

isequal(ab+c, a+bc)
isequal(a+b, b+a)
%% 2

figure;

a = [4 2 3];
b = [1 5 2];

x = 4;
y = 3;

% x * (a + b) = xa + xb
% (x + y) * a = ax + ay
% x * (ay) = (xy) * a
57
isequal(x * (a + b), x*a + x*b)
isequal((x + y) * a, a*x + a*y)
isequal(x * (a*y), x*y * a)

%% 3
clear;
figure;
axis equal; grid on;
% hold on;
a = [3 4 5]; 

len = sqrt(sum(a.*a))
len2 = norm(a)

aort = a / len %%  ort vector 

norm(aort)
isequal(norm(aort), 1)


% quiver3(0,0,0, a(1), a(2), a(3), 0);
% quiver3(0, 0, 0, aort(1), aort(2), aort(3), 0);

quiver3([0 0],[0 0],[0 0], [a(1) aort(1)], [a(2) aort(2)], [a(3) aort(3)], 1);

%%

b = [4 2];

lenb = norm(b);
bort = b / lenb;
norm(bort)

quiver([0 0], [0 0], [b(1) bort(1)], [b(2) bort(2)], 1);

%% 4

clear;

a = [3 4 5];

cos(pi)
acos(-1)
rad2deg(pi)

cosx = a(1) / norm(a);
cosy = a(2) / norm(a);
cosz = a(3) / norm(a);

angx = rad2deg(acos(cosx))
angy = rad2deg(acos(cosy))
angz = rad2deg(acos(cosz))

v = [cosx cosy cosz]
sum(v.*v)

%% 5
clear;
figure;
a = [1 -2 0];
b = [0 1 1];
c = [1 2 2];

% dot(a, cross(b,c)) == detM

m = [a;b;c];
detM = det(m)
isequal(det(m), 0)

% plot3(2, 2, 2, 'r');
grid on;axis equal;hold on;
% line([0 0 0;1 0 1], [0 0 0 ;-2 1 2], [0 0 0;0 1 2], 'Color', 'black');
% line([0 0 0; a(1) b(1) c(1)], [0 0 0; a(2) b(2) c(2)], [0 0 0; a(3) b(3) c(3)]);
% v1=[0.2,0.3 4 ];
% v2=[-0.3,0.3,0.1];
% v=[v2;v1];
% plot3(v(:,1),v(:,2),v(:,3),'r')
% quiver3([0 0 0], [0 0 0], [0 0 0] , [a(1), b(1) c(1)],[a(2), b(2) c(2)],[a(3), b(3) c(3)], 1);

orta = a / norm(a);
ortb = b / norm(b);
ortc = c / norm(c);
%% 6
clear;
p = [2 -3];
q = [1 2];
% ax / bx = ay / by
isequal(p(1) / q(1), p(2) / q(2))

s = [9 4];
% s = m*p + n*q

mat = [p(1) q(1) s(1); p(2) q(2) s(2)]

d = rref(mat)
xy = d(:, 3)

m = xy(1)
n = xy(2)

figure;
axis equal; grid on; hold on;

ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
axis equal; grid on;
axis([-1 9.5 -6.5 10.5]);

quiver(0,0,p(1),p(2), 0, 'LineWidth', 4);
quiver(0,0,q(1),q(2), 0, 'LineWidth', 4);
quiver(0,0,p(1)*m, p(2)*m, 0);
quiver(0,0,q(1)*n, q(2)*n, 0);

quiver(q(1)*n,q(2)*n,p(1)*m, p(2)*m, 0);
quiver(0,0,s(1), s(2), 0);

quiver(0,0,0,1, 0, 'LineWidth', 4);
quiver(0,0,1,0, 0, 'LineWidth', 4);

%% 7

clear;
a = [3 -2]
b = [-2 1]
c = [7 -4]

figure;
% 1
subplot(2,2,1);
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
axis equal; grid on;
hold on;
axis([-4 8 -5 3]);
quiver(0,0,0,1, 0, 'LineWidth', 4);
quiver(0,0,1,0, 0, 'LineWidth', 4);
quiver([0 0 0], [0 0 0], [a(1) b(1) c(1)], [a(2) b(2) c(2)], 0); 

% 2
subplot(2,2,2);
% ax + by = c
matabc = [a(1) b(1) c(1); a(2) b(2) c(2)];
d1 = rref(matabc);
xy1 = d1(:,3);
x = xy1(1)
y = xy1(2)

axs = gca;
axs.XAxisLocation = 'origin';
axs.YAxisLocation = 'origin';
axis equal; grid on;
hold on;
axis([-4 8 -5 3]);
quiver(0,0,0,1, 0, 'LineWidth', 4);
quiver(0,0,1,0, 0, 'LineWidth', 4);
quiver(0, 0, a(1)*x, a(2)*x, 0, 'Color', 'blue');
quiver(0, 0, b(1)*y, b(2)*y, 0, 'Color', 'blue');
quiver(0, 0, c(1), c(2), 0, 'Color', 'red');



% 3
subplot(2,2,3);

% ax + cy = b
matabc = [a(1) c(1) b(1); a(2) c(2) b(2)];
d1 = rref(matabc);
xy1 = d1(:,3);
x = xy1(1)
y = xy1(2)

axs = gca;
axs.XAxisLocation = 'origin';
axs.YAxisLocation = 'origin';
axis equal; grid on;
hold on;
axis([-4 8 -5 3]);
quiver(0,0,0,1, 0, 'LineWidth', 4);
quiver(0,0,1,0, 0, 'LineWidth', 4);
quiver(0, 0, a(1)*x, a(2)*x, 0, 'Color', 'blue');
quiver(0, 0, c(1)*y, c(2)*y, 0, 'Color', 'blue');
quiver(0, 0, b(1), b(2), 0, 'Color', 'red');


% 4
subplot(2,2,4);


% bx + cy = a
matabc = [b(1) c(1) a(1); b(2) c(2) a(2)];
d1 = rref(matabc);
xy1 = d1(:,3);
x = xy1(1)
y = xy1(2)

axs = gca;
axs.XAxisLocation = 'origin';
axs.YAxisLocation = 'origin';
axis equal; grid on;
hold on;
axis([-4 8 -5 3]);
quiver(0,0,0,1, 0, 'LineWidth', 4);
quiver(0,0,1,0, 0, 'LineWidth', 4);
quiver(0, 0, b(1)*x, b(2)*x, 0, 'Color', 'blue');
quiver(0, 0, c(1)*y, c(2)*y, 0, 'Color', 'blue');
quiver(0, 0, a(1), a(2), 0, 'Color', 'red');

%%
57
cos(pi)
a = [1 1]
b = [-1 -1]
norm(a)
norm(b)

a.*b

%%

% scalar a*b = ax*bx + ay*by
% sum(a.*b) in matlab OR dot(a,b)

a = [1 -2 0];
b = [0 1 1];
c = [1 2 2];
57
% 1) a*b = b*a
isequal(sum(a.*b), sum(b.*a));
isequal(dot(a,b), dot(b,a));

% 2.1) (a+b)*c = a*c + b*c
% 2.2) a*(b+c) = ab + ac
isequal(sum((a+b).*c), sum(a.*c) + sum(b.*c));
isequal(dot(a+b,c), dot(a,c) + dot(b,c));

isequal(sum(a.*(b+c)), sum(a.*b) + sum(a.*c));
isequal(dot(a, b+c), dot(a,b) + dot(a,c));

% 3.1) ((n*a) * b) = n*(a*b)
% 3.2) (a * nb) = n*(a*b)
n = 3;
isequal(sum((n*a).*b), n*sum(a.*b));
isequal(dot(n*a, b), n*dot(a,b));

isequal(sum(a.*(n*b)), n*sum(a.*b));
isequal(dot(a, n*b), n*dot(a,b));

% 4) a*a > 0 (if a!=0) /// if a = 0, then a*a = 0

isequal(sum(a.*a), 0);
isequal(dot(a,a), 0);

%% 10
clear;
a = [1 -2 0];
b = [0 1 1];
c = [1 2 2];
57;
% dot(a,b)


% (a*b)*c != a*(b*c)

% sum(a.*b);
% sum(b.*c);
% 57;
% x = sum(a.*b)*c; 
% y = a*sum(b.*c);
% isequal(x,y)

a1 = dot(a,b) * c;
a2 = a * dot(b,c);

isequal(a, b);

%%
% ab = ac, a!=0 !=> b = c

a = [2 4];
b = [9 1];
c = [1 5];

r1 = dot(a,b);
r2 = dot(a,c);
isequal(r1,r2)
isequal(b,c)

%%
clear;
a = [1 -2 0];
b = [0 1 1];
c = [1 2 2];
% (a*b)*b != a*(b*b)
57

r1 = dot(a,b) * b;
r2 = a * dot(b,b);

isequal(r1, r2)
