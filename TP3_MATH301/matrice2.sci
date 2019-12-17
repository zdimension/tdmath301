function M=matrice2(a,n)
    M = ones(n, n) + eye(n, n)(:,$:-1:1) * (a - 1)
endfunction
