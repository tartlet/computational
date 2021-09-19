function [Root1, NumIterations] = BisectRoot(xL, xR);
%The BisectRoot function finds a single root of a polynomial using the
%Bisection Method. The input must be a polynomial in array form.
%Example: [Root1] = BisectRoot([3 0 2], 0, 3), where [3 0 2] can also be written
%as y(x) = 3x^3 + 2 and the root is to be found between y(0) and y(3). The
%output of this function gives the root between two intervals as an array.

Error = input('What do you need your maximum absolute error to be? ');
LeftSol = f(xL);
RightSol = f(xR);

if LeftSol*RightSol < 0
    LeftX = a;
    RightX = b;
    count = 0;
    while abs(RightX - LeftX) > Error
        MidX = (LeftX + RightX)/2;
        Middle = f(MidX);
        if Middle*RightSol < 0
            LeftX = MidX;
        else
            RightX = MidX;
        end
        count = count + 1;
        disp(['iteration ', num2str(count), ': ', num2str(LeftX), ', ', num2str(RightX)])
    end
else
    disp(['There is no root between ', num2str(a), ' and ', num2str(b)])
end

Root1 = (['The root of the equation is located between ', num2str(LeftX), ...
    ' and ', num2str(RightX)]);
NumIterations = count;
    
    
%{
count = 0;
for i = i:length(Polynomial)
    Num(i) = Polynomial(length - count)
    count = count + 1;
end

x = 0;
for NumInd = i:length(Num)
    Num(i) = Num(i)*x
    %}