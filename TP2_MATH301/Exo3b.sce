N = 50

function ex3b(inf, debut, coul, fonc)
    Indices = debut:1:N
    delta = debut - 1
    Reste = zeros(1, N - delta)
    S = 0
    for i = Indices
        S = S + fonc(i)
        Reste(i - delta) = abs(S - inf) // reste
    end

    plot2d("ll", Indices, Reste, style=[color(coul)])

    disp("Début") 
    L = Reste(N) / Reste(N - 1)

    disp("  Méthode 1 :")

    disp("  Vitesse de convergence :")
    disp(L)

    p = log(Reste(N)) / log(Reste(N - 1))

    disp("  Ordre de convergence :")
    disp(p)

    disp("  Méthode 2 :")

    a = -log(Reste(N)) / log(N - 1)
    disp("  a =")
    disp(a)

    L2 = Reste(N) ** (1 / N)

    disp("  Vitesse de convergence :")
    disp(L2)

    disp("Fin")

endfunction;

// fonction de l'exo 3a pour comparaison
// ex3b(1, 1, deff("[S]=fonc(i)", "S=1/(2**i)"))

scf();

ex3b(%pi / 4, 0, "red", deff("[S]=fonc(i)", "S=((-1) ** i) / (2 * i + 1)"))

ex3b(-(%pi ** 2) / 12, 1, "green", deff("[S]=fonc(i)", "S=((-1) ** i) / (i ** 2)"))

ex3b((%pi ** 2) / 6, 1, "blue", deff("[S]=fonc(i)", "S=1 / (i ** 2)"))

ex3b((%pi ** 4) / 90, 1, "black", deff("[S]=fonc(i)", "S=1 / (i ** 4)"))
