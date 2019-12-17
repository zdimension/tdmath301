A = matrice2(-2, 5)

disp(det(A), "det(A)")

disp(inv(A), "A^-1")

disp(cond(A), "cond(A)")

[L,U,E] = lu(M)

function R=e(a,b)
    R = abs(norm(a) - norm(b)) < 1e-10
endfunction

disp(e(inv(M), U \ (L \ E)), "verif")
