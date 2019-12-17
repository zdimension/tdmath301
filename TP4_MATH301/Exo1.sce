function test(expr, a, b)
    disp("Test pour " + expr + " :");
    
    deff("y=f(x)", "y="+expr);
    
    [x,e] = trouvzero(f, a, b , 50)
    disp([x,e], "N fixé :")
    
    [x,e,N] = trouvzerop(f, a, b, 1e-10)
    disp([x,e,N], "Précision fixée :")
endfunction

test("sin(x)", %pi/2, 5*%pi/4)

test("x^3+7*x^2+4*x+2", -10, 10)
