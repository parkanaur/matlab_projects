
%% 1
% singular value decomposition

A = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];

[U,S,V] = svd(A);

x = U*S^(-1)*V'*b;


%% 2
% Kholetckiy method of decomposition
A = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];

R = chol(A);
L = chol(A, 'lower');

57
x = R^(-1)*L^(-1)*b;

%% 3 - RICHARDSON

A = [2.0,-0.3,-0.2; -0.3,2.0,-0.1; -0.2,-0.1,2.0];
b = [7.0; 5.0; 3.0];
x0 = [0.0; 0.0; 0.0];
tol = 0.01; % brutforce it
maxit = 100;
tau = 0.4; % brutforce it

x = x0;
flag = 0;
nb = norm(b,inf);
r = b - A*x;
nr = norm(r,inf);
for i = 1:maxit
    x = x + tau*r;
    r = b - A*x;
    nr = norm(r,inf);
    stop = nr/nb;
    if stop <= tol
        flag = 1;
        break;
    end
end

57
A*x

%% 4 - JACOBI (aka simple iteration)

A = [2.0,-0.3,-0.2; -0.3,2.0,-0.1; -0.2,-0.1,2.0];
b = [7.0; 5.0; 3.0];
x0 = [0.0; 0.0; 0.0];
maxit = 100;
tol = 0.01;

x = x0;
flag = 0;
nb = norm(b,inf);
r = b - A*x;
nr = norm(r,inf);
for i = 1:maxit
    xk = x;
    for j = 1:N
        x(j) = (b(j) - A(j,[1:j-1,j+1:N])*xk([1:j-1,j+1:N]))/A(j,j);
    end
    
    r = b - A*x;
    nr = norm(r,inf);
    stop = nr/nb;
    if stop <= tol
        flag = 1;
        break;
    end
end

A*x

%% 5 - SEIDEL

A = [2.0,-0.3,-0.2; -0.3,2.0,-0.1; -0.2,-0.1,2.0];
b = [7.0; 5.0; 3.0];
x0 = [0.0; 0.0; 0.0];

maxit = 50;
tol = 0.1; % brute

x = x0;
flag = 0;
N = length(b);
nb = norm(b,inf);
r = b - A*x;
nr = norm(r,inf);

for i = 1:maxit
    for j = 1:N
        x(j) = (b(j) - A(j,[1:j-1,j+1:N])*x([1:j-1,j+1:N]))/A(j,j);
    end
    r = b - A*x;
    nr = norm(r,inf);
    stop = nr/nb;
    if stop <= tol
        flag = 1;
        break;
    end
end

A*x

%% 6 - SOR

A = [2.0,-0.3,-0.2; -0.3,2.0,-0.1; -0.2,-0.1,2.0];
b = [7.0; 5.0; 3.0];
x0 = [0.0; 0.0; 0.0];

maxit = 50;
tol = 0.01; % brute
omega = 1.5; % brute between 1 and 2

x = x0;
flag = 0;
N = length(b);
nb = norm(b,inf);
r = b - A*x;
nr = norm(r,inf);

for i = 1:maxit
    for j = 1:N
        xk = x(j);
        x1 = (b(j) - A(j,[1:j-1,j+1:N])*x([1:j-1,j+1:N]))/A(j,j);
        x(j) = xk + omega*(x1-xk);
    end
    r = b - A*x;
    nr = norm(r,inf);
    stop = nr/nb;
    if stop <= tol
        flag = 1;
        break;
    end
end

57
A*x

%% 7 - CON GRAD

A = [2.0,-0.3,-0.2; -0.3,2.0,-0.1; -0.2,-0.1,2.0];
b = [7.0; 5.0; 3.0];
x0 = [0.0; 0.0; 0.0];

maxit = 30;
tol = 0.01; % brute

x = x0;
flag = 0;
N = length(b);
nb = norm(b,inf);
r = b - A*x;
p = r;
nr = norm(r,inf);

for i = 1:maxit
    
    B = dot(r,r);
    alpha_k = B/dot(A*p,p);
    alpha(i) = alpha_k;
    x = x + alpha_k*p;
    r = r - alpha_k*A*p;
    nr = norm(r,inf);
    stop = nr/nb;
    if stop <= tol
        flag = 1;
        break;
    end
    
    beta_k = dot(r,r)/B;
    beta(i) = beta_k;
    p = r + beta_k*p;
end

57
A*x


