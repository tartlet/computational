function I = inverse2(M)
[rows, columns] = size(M); %check if input matrix is a square matrix
if rows ~= columns %if not square, end function/script
    disp('Input matrix is not a square matrix')
    I = [];
    return
end
%make an identity matrix, a, that is same size as the input matrix
for j = 1:columns
    for i = 1:rows
        if i == j 
            out(i,j) = 1;
        else 
            out(i,j) = 0;
        end
    end
end
%actual math part
M = [M, out];
for k = 1:rows
    A = M(k, k:end);                   %first row
    B = A/(M(k,k));                      %first row/diag
    M(k, k:end) = B;                     %reassign first row
    C = M([1:k-1, k+1:end], k:end);               %rest of M
    factor = M([1:k-1,k+1:end],k);       %get the shit under the 1
    sub = factor*B; 
    NewRest = C - sub;
    M([1:k-1, k+1:end], k:end) = NewRest;
end
I = M(1:end, rows+1:end);