function [out, count] = VectNewR(x_guess, y_guess)
x_0 = x_guess;
y_0 = y_guess;
count = 0;
while count < 10 
    count = count + 1;
    A = [x_0; y_0];
    J = Jacobian(x_0, y_0);
    F = [f(x_0, y_0); g(x_0, y_0)];
    var_New = A - (inv(J))*F;
    x_nm1 = x_0;
    y_nm1 = y_0;
    x_0 = var_New(1); 
    y_0 = var_New(2);
end
out = [x_0; y_0];
count = count;