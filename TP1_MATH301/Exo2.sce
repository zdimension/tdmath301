eps = 1e-10;
[eapp, err, n] = euler(eps);
disp([eapp, err, n]);
