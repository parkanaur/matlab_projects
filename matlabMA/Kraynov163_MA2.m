% Задание 1а
% Documents/MATLAB
x = fsolve(@MA2_1A, [0, 0])

% Задание 1б
x_ = fsolve(@MA2_1B, [0, 0, 0])

% Задание 2
syms x
lim1 = limit((10+x)^(1/x), x, 0, 'left')
lim2 = limit((10+x)^(1/x), x, 0, 'right')

% Задание 3
ans3 = diff(atan(x))
syms dx
ans3_ = limit((atan(x+dx)-atan(x))/dx, dx, 0)

% Задание 4
ans4 = limit((9*(x^2)-1)/(x+(1/3)), x, -1/3)

% Задание 5
ans5 = diff((3*cos(5*(x^2)))^3)

% Задание 6 - выводит empty sym
syms x y(x)
y(x) = dsolve(diff(y,x) == (x^2)*(y^3)*sin((y+x)^3), y(0) == 1)

% Задание 9
syms x
lim9a = limit(sin(x)/(x), x, 0)
lim9b = limit((1-exp(x)^(-x))/(x), x, inf)
lim9c = limit((1-x)/(log(x)), x, 1)

% Задание 10
x10 = fsolve(@MA2_10, [0, 0])

