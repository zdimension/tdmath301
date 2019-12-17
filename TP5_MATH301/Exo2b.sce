deff("y=x0(x)","y=1*x.^0");
deff("y=x1(x)","y=2*x.^1");
deff("y=x2(x)","y=3*x.^2");
deff("y=x3(x)","y=4*x.^3");
deff("y=x4(x)","y=5*x.^4");
disp('degre 0');
disp(Simpson(x0,0,1,5))
disp('degre 1');
disp(Simpson(x1,0,1,5))
disp('degre 2');
disp(Simpson(x2,0,1,5))
disp('degre 3');
disp(Simpson(x3,0,1,5))
disp('degre 4');
disp(Simpson(x4,0,1,5))
