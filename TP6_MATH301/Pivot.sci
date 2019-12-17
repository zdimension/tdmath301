function i = Pivot(A, j)
    [_, i] = max(abs(A(j:$, j))); // indice du maximum des éléments après la diagonale
    i = i + j - 1; // on compense le décalage
endfunction
