%Fibonacci Program
clear

NumOfFibs = input('How many Fibonacci numbers do you want? ');

if NumOfFibs == 1
    %user wants only one Fib number
    Fibonacci(1) = input('Enter the first Fibonacci number: ');
elseif NumOfFibs == 2
    Fibonacci(1) = input('Enter the first Fibonacci number: ');
    Fibonacci(2) = input('Enter the second Fibonacci number: ');
else
    Fibonacci(1) = input('Enter the first Fibonacci number: ');
    Fibonacci(2) = input('Enter the second Fibonacci number: ');
    for i = 3:NumOfFibs
        Fibonacci(i) = Fibonacci(i-1) + Fibonacci(i-2);
    end
end

Fibonacci %try to make this display nicer (make within a for loop)