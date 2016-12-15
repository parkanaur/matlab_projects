% Задание 1
A = [3.25 -1.07 2.34; 10.10 0.25 -4.78; 5.04 -7.79 3.31];

% Задание 2
B = rand(3);

% Задание 3
res1 = A + 10*B;
res2 = A*B;
res3 = B.';

% Задание 4
res4 = det(B);

% Задание 5
C = zeros(3, 1);
C(2, 1) = 5.71;
C(3, 1) = -3.61;

% Задание 6
X = A\C;

% Задание 7
syms x;
solve(det([2*cos(x) 1; 1 2*sin(x)]) == 0);

% Задание 8а
mat8 = [2 -1 -1; -1 2 1; 3 -5 -2];
matb8 = [3; 0; 1];

submat1 = mat8;
submat1(:,1) = matb8;
x1 = det(submat1) / det(mat8);

submat2 = mat8;
submat2(:,2) = matb8;
y1 = det(submat2) / det(mat8);

submat3 = mat8;
submat3(:,3) = matb8;
z1 = det(submat3) / det(mat8);

answ8 = [x1; y1; z1];

%8б
mat8_ = [2 1 0; 1 0 3; 0 5 -1];
matb8_ = [5; 16; 10];

submat1_ = mat8_;
submat1_(:,1) = matb8_;
x2 = det(submat1_) / det(mat8_);

submat2_ = mat8_;
submat2_(:,2) = matb8_;
y2 = det(submat2_) / det(mat8_);

submat3_ = mat8_;
submat3_(:,3) = matb8_;
z2 = det(submat3_) / det(mat8_);

answ8_ = [x2; y2; z2];

% Задание 9
mat9 = [1 1 1; 1 3 1; 1 1 3];
matb9 = [2; 4; 0];
C9 = [mat9 matb9];
D9 = rref(C9);
answ9 = D9(:,4);

% Задание 10
A10 = [0 -2; 1 -3];
B10 = [5 1; -1 0];
trans = (B10*inv(A10)-eye(2));
answ10 = (3*B10)^2-2*transpose(trans);

% Задание 11
A11 = [
    3.81 0.28 1.28 0.75;
    2.25 1.32 4.58 0.49;
    5.31 6.38 0.98 1.04;
    9.39 2.45 3.35 2.28
      ];
B11 = [1; 1; 1; 1];
[L, U, P] = lu(A11);
answ11 = inv(U)*inv(L)*P*B11;