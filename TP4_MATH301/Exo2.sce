prec=1e-10;

disp("sin(x)");

f1=sin;
x0=5*%pi/4;
a=%pi/2;

[x,r,N]=trouvzerolag(f1, a, x0, prec);
disp([x,r,N], "Lagrange :");


[x,r,N]=trouvzeronew(f1, fder1, x0, prec);
disp([x,r,N], "Newton :");

xres=fsolve(x0, sin); // correspond



disp("x³+7x²+4x+2");


expr=poly([2,4,7,1],"x","c");
deff("[y]=f2(x)", "y=horner(expr,x)");
x0=0;

[x,r,N]=trouvzerolag(f2, -10, x0, prec);
disp([x,r,N], "Lagrange :");


[x,r,N]=trouvzeronew(f2, fder2, x0, prec);
disp([x,r,N], "Newton :");

xres=fsolve(x0, f2); // différent de x car le polynôme est de degré 3 avec 2 racines complexes
disp(xres, "fsolve :");
rac=roots(expr);
disp(rac, "roots :");

clf();
plot(-10:0, f2);
