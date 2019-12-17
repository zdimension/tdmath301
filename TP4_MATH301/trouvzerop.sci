function [xapp, erreur, N]=trouvzerop(f, a, b, precision)
    b0=b;
    a0=a;
    m=0;
    N=1;
    while (b-a) > precision && N < 1000
        m=(a+b)/2;
        if f(a) * f(m) < 0 then
            b=m;
        else
            a=m;
        end
        N=N+1;
    end
    xapp=m;
    erreur=(b0-a0)/2^(N-1);
endfunction
