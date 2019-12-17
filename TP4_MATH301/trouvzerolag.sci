function [xapp, res, N]=trouvzerolag(f, a, x0, precision)
    N=0;
    xapp=x0;
    res = precision;
    while res >= precision && N < 1000
        xapp = xapp - f(xapp) * (xapp - a) / (f(xapp) - f(a));
        res = abs(f(xapp));
        N=N+1;
    end
endfunction
