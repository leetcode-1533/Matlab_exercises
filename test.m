z = cplxgrid(50);
w = log(z);
for k = 1 : 3
    w = w + 2*pi*i;
    surf(real(z),imag(z),imag(w),real(w));
    hold on;
end
