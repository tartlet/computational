clear

 Fibonacci(1) = input('Enter the first Fibonacci number: ');
 Fibonacci(2) = input('Enter the second Fibonacci number: ');
 Limit = input('What number should this program stop at? ');
 NumberAtIndex = 0;
 index = 3;
 
%while NumberAtIndex < Limit
        %disp(index)
%        Fibonacci(index) = Fibonacci(index-1) + Fibonacci(index-2); 
%        NumberAtIndex = Fibonacci(index)
%        index = index + 1
%        pause
%end

for index = 3:inf
    Fibonacci(index) = Fibonacci(index-1) + Fibonacci(index-2); 
        if Fibonacci(index) > Limit       
            break
        end
end

Fibonacci(1:index-1)