clear
T1 = FtoK(32); R1 = 10030;
T2 = FtoK(77); R2 = 3070;
T3 = FtoK(212); R3 = 207.9;
A = [1 log(R1) (log(R1))^3;
        1 log(R2) (log(R2))^3;
            1 log(R3) (log(R3))^3];
b = [1/T1; 1/T2; 1/T3];
format shortE
x = inv(A) * b;
format short

function T_Kelvin = FtoK(temp)
    T_Kelvin = (temp-32)*(5/9) + 273.15;
end

