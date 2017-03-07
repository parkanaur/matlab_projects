% Задание 1 - ввод вектора в квадратных скобках или a:step:b
userArr = input('array: ');
newArr = fliplr(userArr)

% Задание 2
userArr = input('array: ');
evenArr = userArr(2:2:length(userArr))
oddArr = userArr(1:2:length(userArr))

% Задание 3
userArr = input('array: ');
sum = 0;
for a = 1:length(userArr)
    if userArr(a) < 0
        sum = sum + userArr(a);
    end
end
sum

% Задание 4
userArr = input('array: ');
mean = geomean(userArr)
for a = 1:length(userArr)
    if abs((mean-userArr(a)) / 100) > 0.1
        userArr(a) = mean;
    end
end
userArr

% Задание 5
userArr = input('array: ');
mine = min(userArr);
maxe = max(userArr);
for a = 1:length(userArr)
    if userArr(a) == maxe
        userArr(a) = mine;
    end
end
userArr

% Задание 6
dimX = input('width: ');
dimY = input('height: ');
userArr = zeros(dimY, dimX);
pos = 0; neg = 0; zer = 0;
for i = 1:dimY
    for j = 1:dimX
        userArr(i, j) = input(sprintf('userArr(%d, %d) ', j, i));
        switch sign(userArr(i, j))
            case 1
                pos = pos + 1;
            case 0
                zer = zer + 1;
            case -1
                neg = neg + 1;
        end
    end
end
sprintf('pos: %d zer: %d neg: %d', pos, zer, neg)

% Задание 7
a = [2 3 3
    4 2 3
    6 5 6];
b = [8; 7; 7];

x = a \ b
cond(arr) % => 2.6018e+16

x2 = [a b];
ax2 = rref(x2);

answ = ax2(:,4)
% Решений нет, система несовместна

% Задание 8 - A6_8.m
[a, b] = A6_8;

% Задание 9
a = [1 2 3
    3 4 5];
b = [2; 2];

x = a \ b
check = a * x

% Задание 10
A = [2 3 3
    -2 -3 -3];
B = [8; 7];
[x, r] = linsolve(A, B)

% Задание 11
A = [2 3 3
    -2 -3 -3];
B = [8; 7];
[Q,R] = qr(A);
X = R\(Q'*B)

% Задание 12
A = [2 4 5; 3 6 7; 8 5 2];
[x, y] = eig(A);
for i = 1:3
    vec = x(:,i)
end
for i = 1:3
    num = y(i,i)
end
eq = A*x(:,1) - x(:,1)*y(1,1)






        