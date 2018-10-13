



%% 
%% figure 
%% grid on 
%% axis equal
figure; grid on; axis equal;
line([0;2], [0;1], 'Color', 'r', 'LineWidth', 4);
line([0;-1], [0;2], 'Color', 'r', 'LineWidth', 4);
line([-2;0], [-4;0], 'Color', 'r', 'LineWidth', 4);

figure; grid on; axis equal;
line([0 0 -2; 2 -1 0], [0 0 -4; 1 2 0], 'Color', 'r', 'LineWidth', 4);

%% subplot - 2 or more picture per figure (n_gorizontal, n_vertical, n_index)

figure;

subplot(2, 2, 1);
grid on; axis equal;
line([0 ; 2], [0 ; 1]);

subplot(2, 2, 2);
grid on; axis equal;
line([0 ; 2], [2 ; 0]);

subplot(2, 2, 3);
grid on; axis equal;
line([0 0 0; 2 2 3], [0 2 2 ; 1 0 0]);

subplot(2, 2, 4);
grid on; axis equal;
line([0 ; 3], [2 ; 0]);


%% vector - quiver

x_begin = [0 0 0];
x_comp = [2 2 3];
y_begin = [0 2 2];
y_comp = [1 -2 -2]; 
scale = 1;

figure;

quiver(x_begin, y_begin, x_comp, y_comp, 0, 'Color', 'black', 'LineWidth', 3);
% plot(1,1,'>','LineWidth',4);

grid on;

figure;
quiver(x_begin, y_begin, x_comp, y_comp, 0, 'Color', 'black', 'LineWidth', 3);
axis equal; 
grid on;


%%
figure;


plot(3,0,'>','LineWidth',4);
line([0;2], [0;1]);
% plot(2,1,'>','LineWidth',4);
line([0;2], [2;0]);
% plot(2,0,'>','LineWidth',4);
line([0;3], [2;0]);

grid on; axis equal;

% line([0 0 0; 0 2 2], [2 2 3; 1 0 0], 'Color', 'r', 'LineWidth', 4);

%%

clear;
x_begin = [0 0 0];
y_begin = [0 0 0];
z_begin = [0 0 0];

x_comp = [1 0 0];
y_comp = [0 1 0];
z_comp = [0 0 1];

quiver3(x_begin, y_begin, z_begin, x_comp, y_comp, z_comp, 0);
axis equal;grid on;

%%

% hold on?
% xlim()
% gca?

x_b = [0 0];
y_b = [0 0];
x_c = [0 1];
y_c = [1 0];

quiver(x_b, y_b, x_c, y_c, 0, 'Color', 'black', 'LineWidth', 4);

line([0;0], [-3;3], 'LineWidth', 2);
line([-3;3], [0;0], 'LineWidth', 2);
axis equal; grid on;

%%
figure;
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
% xlim([-2 2]);
% ylim([-2 2]);
axis equal; grid on;
axis([-3 3 -5 5]);


line([-1; 2], [3.5;-5]);
text(2.2, -5.2, '(2;-5)');
% line([;], [;]);

%%

figure;hold on;

ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin'; 

quiver(-2, 0, 3, 2, 0, 'Color', 'blue');
quiver(1, 2, 0, -3, 0, 'Color', 'blue');
quiver(-2, 0, 3, -1, 0, 'Color', 'r');

x_b = [-2 1 1];
y_b = [0 2 -1];
x_com = [-3 0 -3];
y_com = [2 -3 -1];

% quiver(x_b, y_b, x_com, y_com, 'Color', [0 0 0]);

text(-2, 0, 'A');
text(1, 2, 'B');
text(1, -1, 'C');

axis equal; grid on;
axis([-2 2 -2 2]);

%% task 10

figure;

% 1

subplot(1, 2, 1);
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin'; 
grid on; axis equal;hold on;
axis([-4 4 -4 4]);



a = [-2 0]
b = [1 2]
c = [1 -1]
dx = a(1);
dy = a(2) - (b(2) - c(2));

text(-2, 0, 'A');
text(1, 2, 'B');
text(1, -1, 'C');
text(dx, dy, 'D');

% ab
line([a(1); b(1)], [a(2); b(2)]);
line([b(1); c(1)], [b(2); c(2)]);
line([c(1); dx], [c(2); dy]);
line([a(1); dx], [a(2); dy]);

% 2
subplot(1, 2, 2);
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin'; 
grid on; axis equal;hold on;
axis([-4 4 -4 4]);

text(-2, 0, 'A');
text(1, 2, 'B');
text(1, -1, 'C');
text(dx, dy, 'D');

% AB
diffba = b - a;
quiver(a(1), a(2), diffba(1), diffba(2), 0, 'LineWidth', 2, 'Color', 'blue');

% AD
diffda = d - a;
quiver(a(1), a(2), diffda(1), diffda(2), 0, 'LineWidth', 2, 'Color', 'blue');

% AC
diffca = c - a;
quiver(a(1), a(2), diffca(1), diffca(2), 0, 'LineWidth', 2, 'Color', 'red');

% DC
diffcd = c - d;
quiver(d(1), d(2), diffcd(1), diffcd(2), 0, 'LineWidth', 2, 'Color', 'black');

% BC
diffcb = c - b;
quiver(b(1), b(2), diffcb(1), diffcb(2), 0, 'LineWidth', 2, 'Color', 'black');



%%

clear;
figure;
% hold on;
a = [2 3 4];
b = [3 5 2];
sum = a + b;
diff = a - b;

subplot(1, 2, 1);
quiver3([0, 0, 0], [0, 0, 0], [0, 0, 0], [a(1), b(1), sum(1)], [a(2), b(2), sum(2)], [a(3), b(3), sum(3)], 0, 'color', 'blue');
% quiver3(0, 0, 0, a(1), a(2), a(3), 0, 'color', 'blue');
% quiver3(0, 0, 0, b(1), b(2), b(3), 0, 'color', 'red');
% axis([-6 6 -5 5 -5 5]);
text(a(1) + 0.3, a(2) + 0.3, a(3) + 0.3, '{\bfa}');
text(b(1) + 0.3, b(2) + 0.3, b(3) + 0.3, '{\bfb}');
text(sum(1) + 0.3, sum(2) + 0.3, sum(3) + 0.3, '{\bfsum}');
axis equal; grid on; 

subplot(1, 2, 2);
quiver3([0, 0, 0], [0, 0, 0], [0, 0, 0], [a(1), b(1), diff(1)], [a(2), b(2), diff(2)], [a(3), b(3), diff(3)], 0, 'color', 'red');
% quiver3(0, 0, 0, a(1), a(2), a(3), 0, 'color', 'blue');
% quiver3(0, 0, 0, b(1), b(2), b(3), 0, 'color', 'red');
text(a(1) + 0.3, a(2) + 0.3, a(3) + 0.3, '{\bfa}');
text(b(1) + 0.3, b(2) + 0.3, b(3) + 0.3, '{\bfb}');
text(diff(1) + 0.3, diff(2) + 0.3, diff(3) + 0.3, '{\bfdiff}');
axis equal; grid on; 



%%

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

%%

plot([0, 1], [0, 1]);

figure;
line([0; 1], [0; 1]);

