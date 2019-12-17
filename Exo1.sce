disp(fonc1(2))

disp(fonc1(0:0.1:2))

I=0
for i=1:100
    I=I+1/50*fonc1(2*i/100)
end
disp(I)

plot(0:0.1:2,fonc1)
