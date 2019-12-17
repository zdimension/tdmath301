function X = Resolution(A, B)
    [T, C] = Gauss(A, B);
    
    X = C;
    
    for i = size(C, 1):-1:1
        X(i) = C(i) / T(i, i); // on résout la ligne actuelle (où tous les coeffs sauf 1 sont à zéro)
        C = C - T(:, i) * X(i); // on soustrait aux lignes au-dessus
    end
endfunction
