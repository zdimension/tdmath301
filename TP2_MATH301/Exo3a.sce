n = 50
Indice1 = 1:1:n
Reste = zeros(1, n)
Sinf = 1 // somme infinie
S = 0
u = 1

for i = Indice1
    u = u / 2
    S = S + u
    
    Reste(i) = abs(S - Sinf) // reste
end

plot2d("nl", Reste) // affichage en semilog (x lin et y log)

// ça donne une droite, ce qui signifie que l'ordre de grandeur diminue linéairement

L = Reste(n) / Reste(n - 1)

disp("Méthode 1 :")

disp("Vitesse de convergence :")
disp(L)

// on obtient L=0.5 E ]0,1[ => convergence géométrique de rapport 1/2

p = log(Reste(n)) / log(Reste(n - 1))

disp("Ordre de convergence :")
disp(p)

//  on obtient p=1.02... ce qui est un peu quadratique mais pas trop

disp("Méthode 2 :")

a = -log(Reste(n)) / log(n - 1)
disp("a =")
disp(a)

L2 = Reste(n) ** (1 / n)

disp("Vitesse de convergence :")
disp(L2)
