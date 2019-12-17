B = matrice2(20,10)

disp(det(B), "det(B)")

disp(inv(B), "B^-1")

disp(cond(B), "cond(B)")

[L,U,E] = lu(M)

function R=e(a,b)
    R = abs(norm(a) - norm(b)) < 1e-10
endfunction

disp(e(inv(M), U \ (L \ E)), "verif")
