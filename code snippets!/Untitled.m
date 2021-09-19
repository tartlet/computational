NumberLow = input('enter first number: ');
NumberHigh = input('enter second number: ');

if NumberLow > NumberHigh
    disp('Bad boi')
else
    SumOfNumbers = 0;
    for i = NumberLow:NumberHigh
        SumOfNumbers = SumOfNumbers + i;
    end
    str = ['The sum of ', num2str(NumberLow), ' and ', num2str(NumberHigh), ' and all numbers in between' ...
    ' is ', num2str(SumOfNumbers)];
    disp(str)
end