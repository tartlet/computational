clear
load Homework2Problem1

Mean = (X1 + X2 + X3 + X4 + X5 + X6) / 6 ; 
StDev = sqrt(((X1 - Mean)^2 + (X2 - Mean)^2 + (X3 - Mean)^2 + (X4 - Mean)^2 + (X5 - Mean)^2 + (X6 - Mean)^2) / 6 - 1);

MString = ['The sample mean of these numbers is ', num2str(Mean), '.'];
SDString = ['The standard deviation of these numbers is ', num2str(StDev), '.'];

disp(MString)
disp(SDString)
