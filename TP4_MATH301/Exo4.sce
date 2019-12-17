
x=-5:1:5;
y=exp(-x.^2);

x1=-5:.05:5;
y1=exp(-x1.^2);

y2=horner(poly(polymoindreca(x,y,10),"x","c"),x1);
//for i =0:10
//    x3(i+1)=5*cos((2*i+1)*%pi/22);   
//end

x3=5*cos((2*(0:10)+1)*%pi/22); // plus rapide
y3=exp(-x3.^2);

y4=horner(poly(polymoindreca(x3,y3,10),"x","c"),x1);
plot(x1,y1,x1,y2,x1,y4)

scf(1)

x=-5:2:5;
y=exp(-x.^2);
y2=interp1(x,y,x1,"spline");

x=-5:1.25:5;
y=exp(-x.^2);
y3=interp1(x,y,x1,"spline");

plot(x1,y1,x1,y2,x1,y3)
