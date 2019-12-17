function [I]=rectG(g,a,b,N)
    // g fonction a integrer
    // N nombre de points de la subdivision
    // I en sortie, l integrale calculee par les rectangles a gauche
    dx=(b-a)/N;
    I=0;
    for i=a+dx*(0:N-1)
         I=I+g(a+i);
    end
    I=I*dx;
endfunction
