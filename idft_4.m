function y = idft_4(x)

t(1) = x(0+1) + x(2+1);
t(2) = x(0+1) - x(2+1);
t(3) = x(1+1) + x(3+1);
t(4) = x(1+1) - x(3+1);

y = zeros(4, 1);
y(0+1) = t(1) + t(3);
y(3+1) = t(2) - 1i * t(4);
y(2+1) = t(1) - t(3);
y(1+1) = t(2) + 1i * t(4);

y = y/4;

end