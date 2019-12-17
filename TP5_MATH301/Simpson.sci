function I=Simpson(g,a,b,N)
    // g fonction a integrer
    // N nombre de points de la subdivision
    // I en sortie, l integrale calculee par les rectangles a droite
    dx=(b-a)/N;
    I=0;
    for ai=a+dx*(0:N-1)
         I=I+(g(ai) + 4*g(ai + dx/2) + g(ai+dx));
    end
    I=I*dx/6;
endfunction
