function f = MA5_1
    % e^(-x) * sqrt((x^2+1)/(x^4+0.1))
    f = exp(-x).*sqrt((x.^2+1)./(x.^4+0.1));
end