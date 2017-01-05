% Задание 1 
figure; 
subplot(1, 2, 1); %(a+b)+c=a+(b+c) 
grid on; axis equal; hold on; 
quiver3(0, 0, 0, 5, 8, 6, 1); 
quiver3(5, 8, 6, 1, 1, 1, 1); 
quiver3(0, 0, 0, 2, 3, 4, 1); 
quiver3(2, 3, 4, 4, 6, 3, 1); 
quiver3(0, 0, 0, 6, 9, 7, 1); 
a = [2 3 4]; b = [3 5 2]; c = [1 1 1]; 
isequal((a+b)+c, a+(b+c)) 
subplot(1, 2, 2); % a+b=b+a; 
grid on; axis equal; hold on; 
quiver3(0, 0, 0, 2, 3, 4, 1); 
quiver3(2, 3, 4, 3, 5, 2, 1); 
quiver3(0, 0, 0, 3, 5, 2, 1); 
quiver3(3, 5, 2, 2, 3, 4, 1); 
isequal(a+b, b+a)

% Задание 2 
a = [4 2 3]; b = [1 5 2]; x = 4; y = 3; 
%1: x(a+b) = xa + xb 
isequal((x*(a+b)),(x*a+x*b)) 
%2: (x+y)a = xa + ya 
isequal((x+y)*a, x*a+y*a) 
%3: x(ya)=(xy)a 
isequal(x*(y*a), (x*y)*a) 

% Задание 3 
a = [3 4 5]; 
alen = sqrt(a(1)*a(1) + a(2)*a(2) + a(3)*a(3));
al2 = norm(a);
aort = a / norm(a);
isequal(a, alen*aort);

b = [4 2];
blen = sqrt(b(1)*b(1) + b(2)*b(2));
b12 = norm(b);
bort = b / norm(b);
isequal(b, blen*bort);

% Задание 4
a = [3 4 5]; 
alen = sqrt(a(1)*a(1) + a(2)*a(2) + a(3)*a(3));
cosax = a(1) / alen;
angax = radtodeg(acos(cosax))
cosay = a(2) / alen;
angay = radtodeg(acos(cosay))
cosaz = a(3) / alen;
angaz = radtodeg(acos(cosaz))
isequal(int64(cosax^2+cosay^2+cosaz^2), 1)

b = [4 2];
blen = sqrt(b(1)*b(1) + b(2)*b(2));
cosbx = b(1) / blen;
angbx = radtodeg(acos(cosbx))
cosby = b(2) / blen;
angby = radtodeg(acos(cosby))
isequal(int64(cosbx^2+cosby^2), 1)

% Задание 5
a = [1 -2 0]; b = [0 1 1]; c = [1 2 2];
x = transpose([a; b; c]);
isequal(det(x), 0) % 0 => некомпланарны
orta = a / norm(a);
ortb = b / norm(b);
ortc = c / norm(c);
figure; grid on; hold on; axis equal;
line([0 0 0; a(1) b(1) c(1)], [0 0 0; a(2) b(2) c(2)], [0 0 0; a(3) b(3) c(3)]);
line([0 0 0; orta(1) ortb(1) ortc(1)], ...
[0 0 0; orta(2) ortb(2) ortc(2)], [0 0 0; orta(3) ortb(3) ortc(3)], 'Color', ...
[.0 .0 .0], 'LineWidth', 4);

% Задание 6
p = [2 -3]; q = [1 2]; s = [9; 4];
x = transpose([p; q])
isequal(det(x), 0) % некомпланарность
sol = [x s];
razl = rref(sol);
answ = razl(:,3) % s = answ(1)*p + answ(2)*q
mp = answ(1)*p; nq = answ(2)*q;
mp + nq

figure; grid on; hold on; axis equal;
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
quiver([0 0 0], [0 0 0], [p(1) q(1) s(1)], [p(2) q(2) s(2)]);
quiver([0 0], [0 0], [mp(1) nq(1)], [mp(2) nq(2)]);

% Задание 9
a = [1 -2 0]; b = [0 1 1]; c = [1 2 2];
% 1
isequal(a.*b, b.*a)
% 2
isequal((a+b).*c, a.*c+b.*c)
% 2*
isequal(a.*(b+c), a.*b+a.*c)
% 3
isequal((c(2)*a).*b, c(2)*(a.*b))
% 3*
isequal(a.*(c(2)*b), c(2)*(a.*b))
% 4
isequal(a.*a, 0) % => 0

% Задание 10
a = [1 -2 0]; b = [0 1 1]; c = [1 2 2];
% 2
isequal((a.*b).*c, a.*(b.*c))
% 4
isequal((a.*b).*b, a.*(b.*2))

