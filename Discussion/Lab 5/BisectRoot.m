function [Root1, NumIterations] = BisectRoot(xL, xR);

Error = 1*10^(-4);
LeftSol = g(xL);
RightSol = g(xR);

if LeftSol*RightSol < 0
    LeftX = xL;
    RightX = xR;
    count = 0;
    while abs(RightX - LeftX) > Error 
        if count > 20
            break
        end
        MidX = (LeftX + RightX)/2;
        Middle = g(MidX);
        if Middle*RightSol < 0
            LeftX = MidX;
        else
            RightX = MidX;
        end
        count = count + 1;
        disp(['iteration ', num2str(count), ': ', num2str(LeftX), ', ', num2str(RightX)])
    end
else
    disp(['There is no root between ', num2str(xL), ' and ', num2str(xR)])
    return
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