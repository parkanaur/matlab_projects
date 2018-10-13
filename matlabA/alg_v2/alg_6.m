%%

arr = input('input: ');
result = fliplr(arr);

%%

arr = input('input: ');

len = length(arr)

arr2 = arr(1:2:len)
arr1 = arr(2:2:len)

%% 3

arr = input('input: ');
len = length(arr)
sum = 0
for i = 1:len
    if (arr(i) < 0)
        sum = sum + arr(i);
    end
end

sum

%% 4

arr = input('input: ');
mean = geomean(arr)
for i = 1:length(arr)
    if abs((mean-arr(i)) / 100) > 0.1
        arr(i) = mean;
    end
end
arr

%% 5

sprintf('gogo')

%% 6

sprintf('gogo')

%% 7
clear;
A = [2 3 3; 4 2 3; 6 5 6];
b = [8; 7; 7];

x1 = A\b

% A*x 

cond(A) % chislo obuslovlennosti

% if cond(A) is big, then Ax = b will be most probably wrong solved by A \ b

C = [A b];
D = rref(C);
n = 4;
x2 = D(:,n)

[L, U] = lu(A);
x3 = U \ (L \ b)




A*x1
A*x2
A*x3

C

%%

clear;

m = [2 3 3; 4 2 3; 6 5 6];
b = [8; 7; 7];

m1 = [8 3 3; 7 2 3; 7 5 6];
m2 = [2 8 3; 4 7 3; 6 7 6];
m3 = [2 3 8; 4 2 7; 6 5 7];

xx1 = det(m1) / det (m);
xx2 = det(m2) / det (m);
xx3 = det(m3) / det (m);

ans = [xx1; xx2; xx3]

m*ans

%% 8

clear;

t = [0 0.1 0.2 0.3 0.4 0.5];
y = [4.25 3.95 3.64 3.41 3.21 3.04];

a1 = exp(-t);
a2 = t;
b = y';

aa1 = a1';
aa2 = a2';

A = [aa1 aa2];

x = A \ b;
x(1);
x(2);

% A*x
% b
figure;
% axis equal; 
grid on; hold on;
plot(t, y, 'ko');

% y2 = x(1)*a1 + x(2)*a2
y2 = A*x;
t2 = 0:0.1:0.5;
plot(t2,y2);

%% 9

A = [1 2 3; 3 4 5];
b = [2;2];

x = A\b;

c = A*x
b

isequal(c,b)

%% 10

A = [2 3 3; -2 -3 -3];
b = [8; 7];


% if A is square (a*a) then it's LU solved; r - 1/cond(A)
% if A is quadrate (a*b) then it's QR solved; r - matrix rank
[x,r] = linsolve(A,b)

% A*x

%% 11

% QR

A = [2 3 3; -2 -3 -3];
b = [8; 7];

[q, r] = qr(A); % A = q*r

y = q'*b;
x = r\y

% A*x

% R = qr(A);
% x = R\(R'\(A'*b));



%% 12

clear;
A = [2 4 5; 3 6 7; 8 5 2];

[x,y] = eig(A);

% x
% x(:,1)
% y
% y(1,1)

for i = 1:length(x)
    x(:,i)
    y(i,i)
end

isequal(A*x(:,1), y(1,1)*x(:,1))

A*x(:,1)
y(1,1)*x(:,1)



