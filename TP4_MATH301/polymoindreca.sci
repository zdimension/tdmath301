function [p]=polymoindreca(x, y, n)
// renvoi les coefficient du polynome de degre n qui approche le nuage de point (x,y) 
// au sens des moindres carres

N = length(x)
if length(y) <> N, error('x et y doivent avoir la même taille'), end
A=zeros(n+1,n+1);
b=zeros(n+1,1);
for i=1:N;
    for j=1:n+1
        for k=1:n+1
            A(j,k)=A(j,k)+(x(i))^(k-1)*(x(i))^(j-1)
        end
        b(j)=b(j)+y(i)*(x(i))^(j-1)
    end
end
p=A\b
endfunction
