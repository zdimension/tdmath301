ErrS=zeros(1,100);
for N=10:10:1000
    ErrS(N/10)=abs(Simpson(f,0,%pi/4,N)-1);
end;
N=10:10:1000;
// Graphe log-log de l erreur
scf(0);
plot2d("ll",N,ErrS,style=[color("green")])
num=length(N);
disp('ordre de convergence de la methode de Simpson');
disp(log(ErrS(num))/log(ErrS(num-1)))

