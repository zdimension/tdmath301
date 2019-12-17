// q. 2a
disp(fonc1(2));
disp(fonc1(0:0.1:2));

// q. 2b
I=0;
for i = 1:100
    I = I + 1/50 * fonc1(2 * i / 100);
end
disp(I);

// q. 2c
fplot2d(0:0.1:2, fonc1);
