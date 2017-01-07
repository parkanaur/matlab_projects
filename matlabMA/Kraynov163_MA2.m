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

% Задание 6
syms x y(x)
y(x) = dsolve(diff(y,x) == (x^2)*(y^3)*sin((y+x)^3), y(0) == 1)

% Задание 8
syms x y z
func1 = sin(x+2*y)+2*sqrt(x*y*z);
u1xx = diff(func1, x, 2)
u1xy = diff(diff(func1, x), y)
u1xz = diff(diff(func1, x), z)
u1yx = diff(diff(func1, y), x)
u1yy = diff(func1, y, 2)
u1yz = diff(diff(func1, y), z)
u1zx = diff(diff(func1, y), x)
u1zy = diff(func1, y, 2)
u1zz = diff(diff(func1, y), z)

syms x y z
func2 = log(3-x^2)+x*(y^2)*z;
u2xx = diff(func2, x, 2)
u2xy = diff(diff(func2, x), y)
u2xz = diff(diff(func2, x), z)
u2yx = diff(diff(func2, y), x)
u2yy = diff(func2, y, 2)
u2yz = diff(diff(func2, y), z)
u2zx = diff(diff(func2, y), x)
u2zy = diff(func2, y, 2)
u2zz = diff(diff(func2, y), z)

syms x y z
func3 = x^2-atan(y+z^3);
u3xx = diff(func3, x, 2)
u3xy = diff(diff(func3, x), y)
u3xz = diff(diff(func3, x), z)
u3yx = diff(diff(func3, y), x)
u3yy = diff(func3, y, 2)
u3yz = diff(diff(func3, y), z)
u3zx = diff(diff(func3, y), x)
u3zy = diff(func3, y, 2)
u3zz = diff(diff(func3, y), z)

syms x y z
func4 = (x^3)*(y^2)*z+3*x-5*y+z+2;
u4xx = diff(func4, x, 2)
u4xy = diff(diff(func4, x), y)
u4xz = diff(diff(func4, x), z)
u4yx = diff(diff(func4, y), x)
u4yy = diff(func4, y, 2)
u4yz = diff(diff(func4, y), z)
u4zx = diff(diff(func4, y), x)
u4zy = diff(func4, y, 2)
u4zz = diff(diff(func4, y), z)

% Задание 9
syms x
lim9a = limit(sin(x)/(x), x, 0)
lim9b = limit((1-exp(x)^(-x))/(x), x, inf)
lim9c = limit((1-x)/(log(x)), x, 1)

% Задание 10
x10 = fsolve(@MA2_10, [0, 0])

