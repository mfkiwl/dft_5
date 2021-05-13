function test_idft_4

x = rand(4, 1) + 1i*rand(4, 1);

y_1 = ifft(x);

y_2 = idft_4(x);

disp(y_1 - y_2);
disp(y_1);
disp(y_2);

end