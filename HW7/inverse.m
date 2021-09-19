function out = inverse(M)
[rows, columns] = size(M); %check if input matrix is a square matrix
if rows ~= columns %if not square, end function/script
    disp('Input matrix is not a square matrix')
    out = [];
    return
end
%make an identity matrix, a, that is same size as the input matrix
for j = 1:columns
    for i = 1:rows
        if i == j 
            out(i,j) = 1
        else 
            out(i,j) = 0 
        end
    end
end
%okay... how the hell do i invert a matrix lol
for j = 1:rows
    for i = j:rows
        if M(i, j) ~= 0
            for k = 1:rows
                s = M(j,k); M(j,k) = M(i,k); M(i,k) = s;
                s = out(j,k); out(j,k) = out(i,k); out(i,k) = s;
            end
            t = 1/M(j,j);
            for k = 1:rows
                M(j,k) = t * M(j,k);
                out(j,k) = t * out(j,k);
            end
            for L = 1:rows
                if L ~= j
                    t = -M(L,j);
                    for k = 1:rows
                        M(L,k) = M(L,k) + t * M(j,k);
                        out(L,k) = out(L,k) + t * out(j,k);
                    end
                end
            end           
        end
        break
    end
    if M(i,j) == 0
        disp('Singular matrix!')
        out = 'error';
        return
    end     
end
            
        
    
            
