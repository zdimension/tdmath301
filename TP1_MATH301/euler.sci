function [eapp, err, n]=euler(eps)
    [eapp, n] = (0, 0);
    err = factorielle(n);
    
    while err > eps
        eapp = eapp + 1 / factorielle(n);
        n = n + 1;
        err = 3 / factorielle(n);        
    end
endfunction
