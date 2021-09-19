function out = f1f2(ang)
alph = ang(1);
beta = ang(2);
val1 = 1*cos(alph) + 1*cos(alph+beta) - 1;
val2 = 1*sin(alph) + 1*sin(alph+beta) - 1.1;
out = [val1; val2];