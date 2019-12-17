// 1.
//
u=[1; -1; 2]
v=[10; -1; 3]
w=[5; -1; 4]
// a
troisu=3*u
norme2u=norm(u)
norme1=norm(2 * u - v + 5 * w, 1)
normeinfin=norm(-4 * v + w, %inf)
// b
angle=(u' * v) / (norme2u * norm(v))
//
// 2
//
clear
u=complex(11, -7)
v=complex(-1, 3)
// a
moduleu=abs(u)
modulev=abs(v)
produit1=u * conj(v)
produit2=v * conj(u)
c=u^3+v^3
partiere=real(c)
partieim=imag(c)
// b
A=[u,v;conj(u),conj(v)]
AAstar=A*A'
AstarA=A'*A
//
// 3
//
clear
function M=matrice1(a,n)
    M=zeros(n,n);
    for i=1:n
        M(i,i)=1;
    end
    for i=1:n-1
        M(i,i+1)=a;
    end
    
endfunction
M42=matrice1(4,2)
Produit=matrice1(3,5) * matrice1(-3, 5)
//
// 4
//
clear

function R=e(a,b)
    R = abs(norm(a) - norm(b)) < 1e-10
endfunction

M=[0 0 3 10 10;1 2 1 0 0;2 6 4 1 0;1 6 8 4 1;0 2 8 9 4]
S=[6 6 3 0 0;6 9 8 4 0;3 8 14 10 5;0 4 10 20 10;0 0 5 10 25]
// a
[L,U,E]=lu(M)
verif=e(inv(M), U \ (L \ E))
// b
[Q,R,E]=qr(M)
verif1=e(inv(Q), Q')
verif2=e(inv(M), E / R * Q')
// c
R=chol(S)
verif=e(S, R' * R)
//
// 5
//
clear
A=[1 3 2;-5 3 1;-10 0 3;1 0 -2]
B=[1 -2 5;6 1 -1]
C=[10 -5;3 1]
// a
// A*B prod impossible
// B*A prod impossible
A*B.'
// b
D=eye(2,2) - 2*B*B'
// c
E=A*A'
// det(A) impossible car pas carrée
// det(B) idem
det(C)
det(D)
det(E)
// d
// A^-1 toujours pas carrée
// B^-1 idem
C^-1
D^-1
E^-1
C*C^-1
C^-1*C
D*D^-1
D^-1*D
E*E^-1
E^-1*E
// e
conditionnement=cond(E)
