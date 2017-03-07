function f = MA6_4(p, q)
    maxlen = max(length(p), length(q));
    p1 = zeros(1, maxlen);
    q1 = zeros(1, maxlen);
    p1(maxlen - length(p) + 1:maxlen) = p;
    q1(maxlen - length(q) + 1:maxlen) = q;
    f = p1 + q1;
end