function [IntegerArray, IsInteger] = IntArray(inputArray);
%Given an input array, the output array will only have integers. Also, the
%function will display the number of integers in the array.
%Sample Syntax: [IntegerArray, NumIntegers] = IntArray([1 2 3 4])

count = 0;
NewIndex = 0;
for i = 1:length(inputArray)
    if floor(inputArray(i)) == inputArray(i)
        NewIndex = NewIndex + 1;
        IntegerArray(NewIndex) = inputArray(i);
        IsInteger = NewIndex;
    end
    if floor(inputArray(i)) ~= inputArray(i)
        count = count + 1;
    end
end

if count == length(inputArray)
    IntegerArray = [];
    IsInteger = 0;
end


