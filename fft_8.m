function x_3 = fft_8(x)

if length(x) ~= 8
    error('length of x shall be 8.');
end

x_0 = x([1, 5, 3, 7, 2, 6, 4, 8]);

x_1 = zeros(8, 1);
x_2 = zeros(8, 1);
x_3 = zeros(8, 1);

% w_0_2 = 1;
w_0_4 = exp(-2*pi*1i*0/4);
w_1_4 = exp(-2*pi*1i*1/4);
w_0_8 = exp(-2*pi*1i*0/8);
w_1_8 = exp(-2*pi*1i*1/8);
w_2_8 = exp(-2*pi*1i*2/8);
w_3_8 = exp(-2*pi*1i*3/8);

% the first layer
[x_1(1), x_1(2)] = butterfly(x_0(1), x_0(2), 1);
[x_1(3), x_1(4)] = butterfly(x_0(3), x_0(4), 1);
[x_1(5), x_1(6)] = butterfly(x_0(5), x_0(6), 1);
[x_1(7), x_1(8)] = butterfly(x_0(7), x_0(8), 1);

% the second layer
[x_2(1), x_2(3)] = butterfly(x_1(1), x_1(3), w_0_4);
[x_2(2), x_2(4)] = butterfly(x_1(2), x_1(4), w_1_4);
[x_2(5), x_2(7)] = butterfly(x_1(5), x_1(7), w_0_4);
[x_2(6), x_2(8)] = butterfly(x_1(6), x_1(8), w_1_4);

% the third layer
[x_3(1), x_3(5)] = butterfly(x_2(1), x_2(5), w_0_8);
[x_3(2), x_3(6)] = butterfly(x_2(2), x_2(6), w_1_8);
[x_3(3), x_3(7)] = butterfly(x_2(3), x_2(7), w_2_8);
[x_3(4), x_3(8)] = butterfly(x_2(4), x_2(8), w_3_8);

end
