function [sN] = MA8_6(aN, Nt)
    % aN - формула члена ряда
    % Nt - число рассматриваемых членов
    % sN - значение суммы
    N = 1:Nt;
    % массив значений членов от 1 до Nt
    Y = subs(aN, 'n', N);
    
    % график последовательности членов ряда
    figure; hold on; grid on; axis equal;
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    plot(N,Y)
    
    % график частичных сумм
    S = subs(aN, 'n', 1);
    % составляем матрицу частичных сумм
    partS = S;
    for n = 2:1:Nt
        partS = partS + subs(aN, 'n', n);
        S = [S; partS];
    end
    plot(N, S(N))
    legend('последовательность', 'частичные суммы')
    
    sN = S(Nt);
    disp(double(sN));
end