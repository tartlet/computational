function out = Jacobian(alph, beta)
df1_alph = -1 .* sin(alph) - 1 .* sin(alph + beta);
df1_beta = - 1 .* sin(alph + beta);
df2_alph = 1 .* cos(alph) + 1 .* cos(alph +beta);
df2_beta = 1 .* cos(alph +beta);
