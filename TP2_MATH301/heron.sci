function [ra, err, n]=heron(a, eps)
    ref = sqrt(a)
    ra = ceil(ref)
    n = 0
    err = 1
    while err > eps
        ra = (ra + a / ra) / 2
        n = n + 1
        err = abs(ref - ra)
    end
endfunction
