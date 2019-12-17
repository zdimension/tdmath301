function A = Transvection(A, i, j, t)
    A(i, :) = A(i, :) + t * A(j, :);
endfunction
