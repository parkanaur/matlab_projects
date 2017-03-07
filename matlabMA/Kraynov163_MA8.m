% Задание 1
f = sym('1/(1+x)');
tf = taylor(f);
pretty(tf)

% Задание 2
f = sym('1/(x+y)');
syms x y
tfx = taylor(f, x, 'Order', 7);
pretty(tfx)
tfy = taylor(f, y, 'Order', 7);
pretty(tfy)

% Задание 3
syms x
f = sym('x*sin(x)');
pretty(taylor(f, x, 2, 'Order', 10))

% Задание 4
syms k x
sum1 = symsum('(-1)^k/(k^2)', k, 1, Inf)
sum2 = symsum((-1)^(k)*x^(2*k+1)/sym('(2*k+1)!'), k, 0, Inf)

% Задание 5
syms n
% Признак сходимости: lim(n->Inf) Un = 0
lim = limit((1/2)*(1-(1/3)^n), n, Inf) % 1/2 != 0 - расходится

% Задание 6 - MA8_6.m
s1 = MA8_6('(0.3)^n', 20);
s2 = MA8_6('(1.5)^n', 5);
s3 = MA8_6('1/n', 20);
s4 = MA8_6('1/(n^(1/2))', 20);
s5 = MA8_6('1/(n^2)', 20);
s6 = MA8_6('1/(n^2+2*n)', 20);