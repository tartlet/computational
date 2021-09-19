function [Root, NumIterations] = NewtonRhapson1(x);

x_n = x;
Value_xn = f(x_n);
count = 0;
Error = 10^-5;

while Value_xn >= Error
    Value_xn = f(x_n);
    Deriv_xn = f_deriv(x_n);
    x_np1 = x_n - (Value_xn/Deriv_xn);
    x_n = x_np1;
    count = count + 1;
    disp(['iteration ', num2str(count), ': ', num2str(x_n)])
    Value_xn = f(x_n);
end 

Root = x_n;
NumIterations = count;
    
    