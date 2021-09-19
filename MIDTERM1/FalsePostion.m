function Root1 = FalsePostion(xL, xR);

LeftSol = f(xL);
RightSol = f(xR);

if LeftSol*RightSol < 0
    LeftX = xL;
    RightX = xR;
    count = 0;
    while count < 10
        XApp = LeftX - ((RightX-LeftX)/(RightSol-LeftSol))*LeftSol;
        XApp_Sol = f(XApp);
        if LeftSol*XApp_Sol < 0
            RightX = XApp;
        else
            LeftX = XApp;
        end
        count = count + 1;
        fprintf(['iteration ', num2str(count)])
        fprintf(': %.6f', LeftX)
        fprintf(', %.6f \n', RightX)
    end
else
    disp(['There is no root between ', num2str(xL), ' and ', num2str(xR)])
end

Root1 = [];
fprintf('The root of the equation is located between %.6f', LeftX);
fprintf(' and %.6f \n', RightX);