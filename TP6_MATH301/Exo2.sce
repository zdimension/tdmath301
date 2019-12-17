A = [1,1,3;2,1,1;1,2,1];
B = [1;1;9];

disp([A, B], "Système :");

[T, C] = Gauss(A, B)
disp([T, C], "Triangularisation");

X = Resolution(A, B);
disp(X, "Solution :");
disp(A * X, "Vérification : A*X =");
