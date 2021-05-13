function test_fft

x = randn(8, 1) + 1i * randn(8, 1);

y_1 = fft(x);

y_2 = fft_8(x);

if norm(y_1 - y_2) < 2e-15
    disp('test passed.');
else
    disp('test failed.');
end

x = randn(4, 1) + 1i * randn(4, 1);

y_3 = fft(x);

y_4 = fft_4(x);

if norm(y_3 - y_4) < 1e-15
    disp('test fft_4 passed.');
else
    disp('test fft_4 failed.');
end

end