a=0;
b=%pi/4;
ErrG=zeros(1,50);
ErrM=zeros(1,50);
for i=1:50
    ErrG(i)=abs(rectG(f,a,b,i*10)-1);
    ErrM(i)=abs(rectM(f,a,b,i*10)-1);
end;
N=10:10:500;
// Graphe log-log de l erreur
scf(0);
plot2d("ll",N,ErrG,style=[color("red")])
plot2d("ll",N,ErrM,style=[color("blue")])
disp('ordre de convergence de la methode des rectangles a gauche')
num=length(N);
disp(log(ErrG(num))/log(ErrG(num-1)))
disp('ordre de convergence de la methode du point milieu');
disp(log(ErrM(num))/log(ErrM(num-1)))


// les deux méthodes sont super-linéaires, celle de gauche l'est un peu plus
