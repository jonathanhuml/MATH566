e_t = zeros(1,100);
e_t2 = zeros(1,100);
for i = 1:100
    e_t(i)= cheb_bary(i);
    e_t2(i) = cheb_bary2(i);
end

plot(1:length(e_t),e_t);
hold on;
plot(1:length(e_t2),e_t2);
ylim([10e-16 1])
legend('Runge Function','Exp(x)/cos(x)','location','best')