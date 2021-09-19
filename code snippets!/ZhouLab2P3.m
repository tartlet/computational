SumOfEven = 0;

for i = 0:100
    if mod(i,2) == 0
        SumOfEven = SumOfEven + i;
    end
end

disp(['The sum of all even numbers between 1 and 100 is ', num2str(SumOfEven)])
