function [NumRows, NumCols, MatR] = MatrixDescriptionAndOperator(inputMatrix);
%Input a Matrix M and the function will output number of rows, number of
%columns, and the solution to (inverse(transposed Matrix M * Matrix M)) *
%transposed Matrix M.
%Output format: [number of rows, number of columns, answer to equation]

[NumRows, NumCols] = size(inputMatrix);
MatR = inv((inputMatrix)' * inputMatrix)* (inputMatrix)';


