function [out, count] = VectNewR(G)
x_0 = G(1);
y_0 = G(2);
count = 0;
x_nm1 = 999;
y_nm1 = 999;
while (sqrt((x_0 - x_nm1)^2 + (y_0 - y_nm1)^2) >= 0.01) || count < 100
 count = count + 1;
 A = [x_0; y_0];
 J = Jacobian(A);
 F = f1f2(A);
 var_New = A - (inv(J))*F;
 x_nm1 = x_0;
 y_nm1 = y_0;
 x_0 = var_New(1);
 y_0 = var_New(2);
end
out = [x_0; y_0];
count = count;