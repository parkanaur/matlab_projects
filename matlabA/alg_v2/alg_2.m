

%% 1

A = [3.25 -1.07 2.34; 10.10 0.25 -4.78; 5.04 -7.79 3.31]

%% round(A, 2) %% okruglit'


%% random matrix between 0 and 1
B = rand(3,3)

A + 10*B
A * B


C = [1 2; 5 10]
D1 = [3 5; 7 11]

C*D1 %% by linal rools
C.*D1 %% by elements


%% transpose

B
B'

%% determinator of matrix
det(B)

%% matrix of 0-s - zeros, matrix of 1-s - ones
%% indexing via ()
clear;
C = zeros(3, 1);
C(2, 1) = 5.71;
C(3, 1) = -3.61

%% 6
%% solve Gauss:
%% Ax=C
%% CC = [A C]
%% D = rref(CC)
%% x = D(:, N) 
%% N - num of columns in CC
A = [3.25 -1.07 2.34; 10.10 0.25 -4.78; 5.04 -7.79 3.31]

CC = [A C]
D = rref(CC)
x = D(:,4)

CK = A * x
C

%% ???? ?????? ??????????????? (??? ?????, ????????), ???????????? ????? ????

x = asin(0.5)

sin(pi / 6)

mm = [2*cos(pi / 3) 1; 1 2*sin(pi / 6)]
clear;


%% Syms - declare variable, solve - solve uravnenie

syms x;
solve(det([2*cos(x) 1; 1 2*sin(x)]) == 0)

%% ?? ?? ???????, ?????? ???
cos(pi/12)*2
sin(5*pi/12)*2

%% kramer rools (works for exact type of matrixs)
clear;

m = [2 -1 -1; -1 2 1; 3 -5 -2];
b = [3; 0; 1];

m1 = [3 -1 -1; 0 2 1; 1 -5 -2];
m2 = [2 3 -1; -1 0 1; 3 1 -2];
m3 = [2 -1 3; -1 2 0; 3 -5 1];

x1 = det(m1) / det (m);
x2 = det(m2) / det (m);
x3 = det(m3) / det (m);

ans = [x1 x2 x3]

%%
clear;

m = [2 1 0; 1 0 3; 0 5 -1];

m1 = [5 1 0; 16 0 3; 10 5 -1];
m2 = [2 5 0; 1 16 3; 0 10 -1];
m3 = [2 1 5; 1 0 16; 0 5 10];

x1 = det(m1) / det(m);
x2 = det(m2) / det(m);
x3 = det(m3) / det(m);

ans = [x1 x2 x3];

%% 9

%% ??????? ??????? ?????? Ax=C
%% CC = [A C]
%% D = rref(C)

clear;

A = [1 1 1; 1 3 1; 1 1 3];
C = [2;4;0];

CC = [A C];
D = rref(CC);
x = D(:,4)

ck = A*x
C

%% ??????? ???? ? ???? ??????
xx = A\C

%% edinicnaya matrica = E - eye(N)
%% A^-1 = inv(A)
%% transpose A'
clear;
A = [0 -2; 1 -3];
B = [5 1; -1 0];

L = (3*B)^2;
R = 2*(B*inv(A)- eye(2))';

ans = L - R;

%% 11
% LU
clear;

A = [
    3.81 0.28 1.28 0.75;
    2.25 1.32 4.58 0.49;
    5.31 6.38 0.98 1.04;
    9.39 2.45 3.35 2.28
      ];
  
b = [1;1;1;1];

[L, U] = lu(A);
x = U \ (L \ b)

ck = A*x
b


%%
clear;

A = [1 -1 3; 2 1 -4; 3 1 -3];
b = [7; -3; 1];

x = A\b

%% size of matrix (ranges) - size()
%% ?????????? ????? ??????? ??????
%% ?????????? ???? ? ???????!!

clear;
R = rand(7)
S = size(R)
%% S(0) - wrong
S(1)
S(2)
%%[size(R)](2)
x = R(S(1),S(2) - 1)











