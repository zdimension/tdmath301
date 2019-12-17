function [xapp, res, N]=trouvzeronew(f, fder, x0, precision)
    N=0;
    xapp=x0;
    res = precision;
    while res >= precision && N < 1000
        xapp = xapp - f(xapp) / fder(xapp);
        res = abs(f(xapp));
        N=N+1;
    end
endfunction
