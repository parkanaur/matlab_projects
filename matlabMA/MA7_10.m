function f = MA7_10(y)
    f = quadl(@fint, 0, y, 1.0e-09);
    function f = fint(x)
        f = exp(x).*(sin(x)-cos(x));
    end
end