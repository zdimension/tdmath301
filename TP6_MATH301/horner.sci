function R = horner(P, x)
    P = P(:)'; // convertit P en vecteur ligne s'il ne l'est pas déjà
    R = 0;
    for i = flipdim(P, 2)
        R = R * x + i;
    end
endfunction
