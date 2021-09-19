Number1 = input('Enter your first number: ');
Number2 = input('Enter your second number: ');
rNumber1 = round(Number1);
rNumber2 = round(Number2);

disp([num2str(Number1), ' will be rounded to ', num2str(rNumber1), ...
' and ', num2str(Number2), ' will be rounded to ', num2str(rNumber2)])

AccumulatedSum = 0;
  
if rNumber1 <= rNumber2 
    for i = rNumber1:rNumber2
        AccumulatedSum = AccumulatedSum + i;
    end
    disp(['Total sum of integers between ', num2str(rNumber1), ...
    ' and ', num2str(rNumber2), ' is ', num2str(AccumulatedSum)])
        
else
    for i = rNumber2:rNumber1
        AccumulatedSum = AccumulatedSum + i;
    end
    disp(['Total sum of integers between ', num2str(rNumber2), ...
    ' and ', num2str(rNumber1), ' is ', num2str(AccumulatedSum)])
end

        