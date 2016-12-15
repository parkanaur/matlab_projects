% Задание 1 
grid on; axis equal; 
line([0; 2], [0; 1]); 
line([0; -1], [0; 2]); 
line([-2; 0], [-4; 0]); 

% Задание 2 
figure; grid on; axis equal; 
line([0 0 0; 2 2 3], [0 2 2; 1 0 0]); 

% Задание 3 
figure; 

subplot(2, 2, 1); 
grid on; axis equal; 
line([0 0 0; 2 2 3], [0 2 2; 1 0 0]); 

subplot(2, 2, 2); 
grid on; axis equal; 
line([0; 2], [0; 1]); 

subplot(2, 2, 3); 
grid on; axis equal; 
line([0; 2], [2; 0]); 

subplot(2, 2, 4); 
grid on; axis equal; 
line([0; 3], [2; 0]); 

% Задание 4 
xbeg = [0 0 0]; 
xc = [2 2 3]; 
ybeg = [0 2 2]; 
yc = [1 -2 -2]; 
figure; 
quiver(xbeg, ybeg, xc, yc, 0, 'LineWidth', 4, 'Color', [.0, .0, .0]); 
axis equal; grid on; 

% Задание 5 
xb = [0 0 0]; yb = [0 0 0]; zb = [0 0 0]; 
xc = [1 0 0]; yc = [0 1 0]; zc = [0 0 1]; 
figure; 
quiver3(xb, yb, zb, xc, yc, zc, 0, 'LineWidth', 2, 'Color', [.0, .0, .0]); 

% Задание 6 
figure;
ax = gca;
xlim([-2 2])
ylim([-2 2])
grid on; axis equal; hold on;
xa = [0 0]; ya = [0 0]; xb = [1 0]; yb = [0 1];
quiver(xa, ya, xb, yb, 0, 'LineWidth', 4, 'Color', [.0, .0, .0]);
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XAxis.LineWidth = 2;
ax.YAxis.LineWidth = 2;

% Задание 7
figure;
xb = [0 0 0]; yb = [0 0 0]; zb = [0 0 0]; 
xc = [1 0 0]; yc = [0 1 0]; zc = [0 0 1];
quiver3(xb, yb, zb, xc, yc, zc, 0, 'LineWidth', 4, 'Color', [.0, .0, .0]);
grid on; hold on;
xlim([-2 2])
ylim([-2 2])
zlim([-2 2])
ax = axis; 
plot3([ax(1) ax(2)], [0 0], [0 0], 'LineWidth', 2);
plot3([0 0], [ax(3) ax(4)], [0 0], 'LineWidth', 2);
plot3([0 0], [0 0], [ax(5) ax(6)], 'LineWidth', 2);

% Задание 8
figure; grid on; axis equal; hold on;
ax = gca;
xlim([-6 6])
ylim([-6 6])
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
line([-1;2],[3.5;-5]);
text(2.1, -4.8, '2; -5');
line([1,2;3,4],[-1,0;-3.5,-5]);
text(3.1, -3.4, '3; -3.5');
text(4.1, -4.8, '4; -5');

% Задание 9
figure; grid on; axis equal; hold on;
ax = gca;
xlim([-3, 3]); ylim([-3; 3]);
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
a = [-2 0]; b = [1 2]; c = [1 -1];
diffab = b - a; diffbc = c - b; diffac = a - c;
quiver(a(1),a(2),diffab(1),diffab(2),0, 'LineWidth', 2, 'Color', [.0, .0, 1]);
quiver(b(1),b(2),diffbc(1),diffbc(2),0, 'LineWidth', 2, 'Color', [.0, .0, 1]);
quiver(c(1),c(2),diffac(1),diffac(2),0, 'LineWidth', 2, 'Color', [1, .0, .0]);
text(-2.7, 0.2, 'A(-2 0)');
text(1.1, 2.1, 'B(1 2)');
text(1.1, -1.1, 'C(1 -1)');

% Задание 10
figure;
a = [-2 0]; b = [1 2]; c = [1 -1]; d = [-2 -3];
diffab = b - a; diffbc = c - b; diffdc = c - d; diffad = d - a;
diffca = a - c; diffac = c - a; diffcd = d - c;

subplot(1, 2, 1);
grid on; axis equal; hold on;
xlim([-3, 3]); ylim([-3; 3]);
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
line([a(1) b(1) c(1) d(1); b(1) c(1) d(1) a(1)], [a(2) b(2) c(2) d(2); b(2) c(2) d(2) a(2)])
text(-2.7, 0.4, 'A(-2 0)');
text(1.1, 2.1, 'B(1 2)');
text(1.1, -1.1, 'C(1 -1)');
text(-1.89, -2.8, 'D(-2 -3)');

subplot(1, 2, 2);
grid on; axis equal; hold on;
xlim([-3, 3]); ylim([-3; 3]);
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
text(-2.7, 0.4, 'A(-2 0)');
text(1.1, 2.1, 'B(1 2)');
text(1.1, -1.1, 'C(1 -1)');
text(-1.85, -2.8, 'D(-2 -3)');
quiver(a(1),a(2),diffab(1),diffab(2),0, 'LineWidth', 2, 'Color', [.0, .0, 1]);
quiver(a(1),a(2),diffac(1),diffac(2),0, 'LineWidth', 2, 'Color', [1, .0, .0]);
quiver(a(1),a(2),diffad(1),diffad(2),0, 'LineWidth', 2, 'Color', [.0, .0, 1]);
quiver(b(1),b(2),diffbc(1),diffbc(2),0, 'LineWidth', 2, 'Color', [.0, .0, .0]);
quiver(d(1),d(2),diffdc(1),diffdc(2),0, 'LineWidth', 2, 'Color', [.0, .0, .0]);

% Задание 11
figure;
a1 = [2 3 4];
b1 = [3 5 2];
sum = a1 + b1;
sub = a1 - b1;
starts = zeros(3,3);
subplot(1, 2, 1);
ends = [a;b;sum];
quiver3(starts(:,1), starts(:,2), starts(:,3), ends(:,1), ends(:,2), ends(:,3), 0)
axis equal;
subplot(1, 2, 2);
ends = [a;b;sub];
quiver3(starts(:,1), starts(:,2), starts(:,3), ends(:,1), ends(:,2), ends(:,3), 0)
axis equal;
