function [sN] = MA8_6(aN, Nt)
    % aN - ������� ����� ����
    % Nt - ����� ��������������� ������
    % sN - �������� �����
    N = 1:Nt;
    % ������ �������� ������ �� 1 �� Nt
    Y = subs(aN, 'n', N);
    
    % ������ ������������������ ������ ����
    figure; hold on; grid on; axis equal;
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    plot(N,Y)
    
    % ������ ��������� ����
    S = subs(aN, 'n', 1);
    % ���������� ������� ��������� ����
    partS = S;
    for n = 2:1:Nt
        partS = partS + subs(aN, 'n', n);
        S = [S; partS];
    end
    plot(N, S(N))
    legend('������������������', '��������� �����')
    
    sN = S(Nt);
    disp(double(sN));
end