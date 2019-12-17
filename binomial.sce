function C=binomial(k, n)
    printf("k=%d; n=%d\n", k, n);
    if (k == 0) | (k == n) then
        C = 1;
    else
        C = binomial(k - 1, n - 1) + binomial(k, n - 1);
    end
endfunction;

disp(binomial(3, 6));
