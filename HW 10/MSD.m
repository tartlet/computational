function dx = MSD(x,t)
m = 100;
b = 100;
k = 10000;
M(1, :) = [0, 1];
M(2, :) = 1/m*[-k, -b];
dx = M*x;