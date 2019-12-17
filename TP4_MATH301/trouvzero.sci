function [xapp, erreur]=trouvzero(f, a, b, N)
    m=0;
    erreur=(b-a)/2^N;
    for i=1:N
        m=(a+b)/2;
        if f(a) * f(m) < 0 then
            b=m;
        else
            a=m;
        end
    end
    xapp=m;
endfunction
