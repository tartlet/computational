function out = Jacobian(RV)
alph = RV(1);
beta = RV(2);
df1_alph = -1 .* sin(alph) - 1 .* sin(alph + beta);
df1_beta = - 1 .* sin(alph + beta);
df2_alph = 1 .* cos(alph) + 1 .* cos(alph +beta);
df2_beta = 1 .* cos(alph +beta);
out = [df1_alph df1_beta; df2_alph df2_beta];