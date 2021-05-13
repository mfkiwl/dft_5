function y = dft_5(x)

x = x(:);

omega_1 = exp(-1i*2*pi/5);
omega_3 = exp(-1i*2*3*pi/5);
omega_4 = exp(-1i*2*4*pi/5);
omega_2 = exp(-1i*2*2*pi/5);
omega = [omega_1; omega_2; omega_4; omega_3];

% W = [omega_1, omega_3, omega_4, omega_2; ...
%        omega_2, omega_1, omega_3, omega_4; ...
%        omega_4, omega_2, omega_1, omega_3; ...
%        omega_3, omega_4, omega_2, omega_1];
% 
% y_prime = W * [x(2); x(4); x(5); x(3)];

 fft_omega = [-1.000000000000000 - 0.000000000000000i; ...
 -1.175570504584946 - 1.902113032590307i; ...
  2.236067977499790 + 0.000000000000000i; ...
  1.175570504584946 - 1.902113032590307i];

%y_prime = ifft(fft(omega) .* fft([x(2); x(4); x(5); x(3)]));
%y_prime = ifft(fft_omega .* fft([x(2); x(4); x(5); x(3)]));
y_prime = idft_4(fft_omega .* dft_4([x(2); x(4); x(5); x(3)]));

y = zeros(5, 1);
y(0+1) = sum(x);
y(1+1) = y_prime(1) + x(1);
y(2+1) = y_prime(2) + x(1);
y(4+1) = y_prime(3) + x(1);
y(3+1) = y_prime(4) + x(1);

end