function [T, C] = Gauss(A, B)
    // pivots
    for i = 1:size(A, 1)
        p = Pivot(A,i);
        if p <> 0 then
            // on remonte le pivot pour le mettre sur la diagonale
            A = Echange(A, i, p);
            B = Echange(B, i, p);
            
            for j = i+1:size(A, 1)
                // on soustrait la ligne i à la ligne j pour passer la colonne la plus à gauche à zéro
                t = -A(j, i) / A(i, i);
                A = Transvection(A, j, i, t);
                B = Transvection(B, j, i, t);
            end
        end;
    end
    
    T=A;
    C=B;
endfunction
