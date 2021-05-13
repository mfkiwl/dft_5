function [x, y] = butterfly(a, b, w)

x = a + b * w;
y = a - b * w;

end