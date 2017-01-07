% ������� 1
figure('name', '������� 1');
x1 = -2:0.01:2;
y1 = exp(-x1).*sin(10*x1);
plot(x1, y1); grid on;

% ������� 2
figure('name', '������� 2');
x2 = 0:0.001:5;
y2 = exp(-x2).*sin(10*x2);


subplot(2, 2, 1);
comet(x2, y2);
grid on;

subplot(2, 2, 2);
area(x2, y2);
grid on;

z2 = x2;
subplot(2, 2, 3);
comet3(x2, y2, z2, 0.9)
grid on; view([-58 13]);

% ������� 3
figure('name', '������� 3');
p3 = [1 0 0 0];
pie3([25 40 20 15], p3);
view(120, 50);

% ������� 4
figure('name', '������� 4');

x4 = 0:0.01:1;
x4_1 = 0:1/99:1;
y4 = exp(-x4).*(sin(x4)+0.1*sin(100*pi*x4));
y4_1 = exp(-x4_1).*(sin(x4_1)+0.1*sin(100*pi*x4_1));
plot(x4, y4, 'Color', 'red');
grid on; hold on; axis equal;
plot(x4_1, y4_1, 'Color', 'green');

% ������� 5
figure('name', '������� 5');
x5 = 0:1:10;
y5_1 = log(2*x5);
y5_2 = log(x5).*sin(2*x5);

subplot(2, 2, 1);
loglog(x5, y5_1); hold on; axis equal; grid on;

subplot(2, 2, 2);
loglog(x5, y5_2); hold on; grid on; axis equal;
