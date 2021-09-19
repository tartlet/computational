function x = GaussElim(A, b)
format long
M = [A b];
[row, col] = size(M);
tmp = M(3, :);
M(3, :) = M(1, :);
M(1, :) = tmp;

for i = 1:row-1     % for each diagonal element, last one doesn't count bc its b!
    for j = i+1:row   % for each row under the diagonal element
        factor = M(j, i)/M(i, i);  %divide first element by diagonal
        M(j,:) = M(j, :) - factor*M(i, :); %replace the row with factor*row - diagonal element
    end
end
%back substitution
x = zeros(row, 1);
for i=row-1:-1:1
    x(i) = (M(i,col) - M(i, i+1:row)*x(i+1:row))/ M(i,i);
end
