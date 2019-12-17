function pile=pof()
    pile = rand() < 0.5
endfunction

N=100000
pile=0
for i=1:N
    if pof() then
        pile = pile + 1;
        end
end

printf("pile : %d\n", pile);
printf("face : %d\n", N - pile);
