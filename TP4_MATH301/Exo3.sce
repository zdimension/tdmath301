x=[0.1 0.1 0.1 0.2 0.2 0.2 0.3 0.3 0.4 ...
0.4 0.4 0.5 0.6 0.6 0.6 0.7 0.7 0.8 0.8 0.8 0.9 ];
y=[0.35 0.4 0.45 0.6 0.7 0.79 0.65 0.8 ...
0.7 0.8 1 1 0.75 1 1.1 0.8 1.1 0.58 0.6 0.8 0.5];
clf();
[p]=polymoindreca(x, y, 2);
P=poly(p, "x", "c")
X=0:0.01:1
Y=horner(P,X)
plot(x,y,'k+',X,Y,'k-')
z=horner(P,x)
dif=y-z
err=sum(dif.^2)
disp(err)
