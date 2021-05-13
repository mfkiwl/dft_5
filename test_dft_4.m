function test_dft_4

x = rand(4, 1) + 1i*rand(4, 1);

y_1 = fft(x);

y_2 = dft_4(x);

disp(y_1 - y_2);
disp(y_1);
disp(y_2);

end