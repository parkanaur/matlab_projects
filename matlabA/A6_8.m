function [a, b] = A6_8
    t = [0; 0.1; 0.2; 0.3; 0.4; 0.5];
    y = [4.25; 3.95; 3.64; 3.41; 3.21; 3.04];
    A = [exp(-t) t];
    x = A\y;
    a = x(1)
    b = x(2)
    plot(t, y, 's'); hold on;
    fplot(@(t) x(1).*exp(-t) + x(2).*t, [0 0.5])
end