function test_dft_5

x = rand(5, 1) + 1i*rand(5, 1);

y_1 = fft(x);

y_2 = dft_5(x);

disp(y_1 - y_2);

end