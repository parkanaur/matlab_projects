

%% 1

A = [5 0 -3 0 0; 1 3 0 -1 0; 0 1 7 0 -2; 0 0 1 22 0; 0 0 0 1 8] % 5x5

% compact way #1
57
AN1 = sparse(A);
AN1

% unpack!
r1 = full(AN1);

%% compact way #2 (by diagonals)
[B,d] = spdiags(A); 

% B - matrix of nonzero diagonals
% d - maps B to diagonals of A (or otherwise)

AN2 = spdiags(B,d,5,5);

% AN2 - compact (aka serialized) version of matrix A

% B
% d
% AN2

% r2 - unpacked (aka deserialized) matrix. Should be equal to A
r2 = full(AN2);

whos B d AN2; % memory space

%% 2

clear;
A = [5 0 -3 0 0; 1 3 0 -1 0; 0 1 7 0 -2; 0 0 1 22 0; 0 0 0 1 8]; % 5x5

% A(5,5)

irow = [1 1 2 2 2 3 3 3 4 4 5 5]; 
jcol = [1 3 1 2 4 2 3 5 3 4 4 5];
nzer = [5 -3 1 3 -1 1 7 -2 1 22 1 8];
m = 5;
n = 5;

AS = sparse(irow, jcol, nzer, m,n); % thats actually a map, not a matrix

r = full(AS); % and thats converts map to matrix

isequal(A,AS); % result == 1 => all OK

%% 3

clear;
A = [5 0 -3 0 0; 1 3 0 -1 0; 0 1 7 0 -2; 0 0 1 22 0; 0 0 0 1 8]; % 5x5

% [ir, jc, nz] = find(A);

AN1 = sparse(A);
[ir, jc, nz] = find(AN1);

ans = nz;

%% 4

filename = 'matrix1.dat';
L = load(filename);
AN = spconvert(L);
A = full(AN);

%% 5

clear;
A = [5 0 -3 0 0; 1 3 0 -1 0; 0 1 7 0 -2; 0 0 1 22 0; 0 0 0 1 8] % 5x5

[B,d] = spdiags(A); 

% B - matrix of nonzero diagonals
% d - maps B to diagonals of A (or otherwise)

AN2 = spdiags(B,d,5,5);

% AN2 - compact (aka serialized) version of matrix A

% B
% d
% AN2

% r2 - unpacked (aka deserialized) matrix. Should be equal to A
r2 = full(AN2);

whos B d AN2; % memory space


%% 6
clear;
B = [4 1 0 0 1 0; 1 4 1 0 0 0; 0 1 4 0 0 0; 0 0 0 4 0 1; 1 0 0 0 4 1; 0 0 0 1 1 4]; % 6x6

AN1 = sparse(B);

[B2, d] = spdiags(B);
AN2 = spdiags(B2, d, 6, 6);

r1 = full(AN1);
isequal(r1, B)
whos B2 d AN1 B
57
r2 = full(AN2);
isequal(r1, B)
whos B2 d AN2 B

%% 7

clear;
opengl('save', 'software');
B = [4 1 0 0 1 0; 1 4 1 0 0 0; 0 1 4 0 0 0; 0 0 0 4 0 1; 1 0 0 0 4 1; 0 0 0 1 1 4]; % 6x6
spy(B);

%% 8
clear;
opengl('save', 'software');

clear;
B = [4 1 0 0 1 0; 1 4 1 0 0 0; 0 1 4 0 0 0; 0 0 0 4 0 1; 1 0 0 0 4 1; 0 0 0 1 1 4]; % 6x6

rB = symrcm(B); % sparse reverse Cuthill-McKee

BN = sparse(B);
rBN = symrcm(BN); % sparse reverse Cuthill-McKee (after packing)

% basically, rB == rBN, soooo fuck it

% unpackedB = full(rB) % wrong unpacking
% unpackedBN = full(rBN) % wrong unpacking

R = B(rB, rB); % TRUE unpack after reversing

spy(R);

%% 9
clear;
B = [7 1 1 1 1; 1 7 0 0 0; 1 0 7 0 0; 1 0 0 7 0; 1 0 0 0 7];

R1 = chol(B);
L1 = chol(B, 'lower');

rB = symrcm(B);
Rev1 = B(rB, rB);

R2 = chol(Rev1);
L2 = chol(Rev1, 'lower');

nR1 = sum(sum(spones(R1)))
nR2 = sum(sum(spones(R2)))

nL1 = sum(sum(spones(L1)))
nL2 = sum(sum(spones(L2)))

% nB = sum(sum(spones(B)));

% R1
% R2
% L1
% L2






