function x_2 = fft_4(x)

if length(x) ~= 4
    error('length of x shall be 4.');
end

x_0 = x([1, 3, 2, 4]);

x_1 = zeros(4, 1);
x_2 = zeros(4, 1);

% w_0_2 = 1;
w_0_4 = exp(-2*pi*1i*0/4);
w_1_4 = exp(-2*pi*1i*1/4);

% the first layer
[x_1(1), x_1(2)] = butterfly(x_0(1), x_0(2), 1);
[x_1(3), x_1(4)] = butterfly(x_0(3), x_0(4), 1);

% the second layer
[x_2(1), x_2(3)] = butterfly(x_1(1), x_1(3), w_0_4);
[x_2(2), x_2(4)] = butterfly(x_1(2), x_1(4), w_1_4);

end