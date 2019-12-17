function A = Echange(A, i, j)
    A([i, j], :) = A([j, i], :); // échange simple et rapide des deux lignes
endfunction
