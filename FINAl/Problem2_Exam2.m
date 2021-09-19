clear
load('TakeHomeExamProblem2.mat')

%Calculate Performance Confidence Value:
pdf_combined = sqrt(pdf_fresh .* pdf_fatigued);
CV = UltimateSimp(x, pdf_combined);
fprintf('\nCV = %.5f \n', CV)

%Simpson's Method of Integration is used. More accurate than trapezoidal,
%especially because the given data results in a series of quadratic-like
%functions that can easily be integrated using this method. Also x values
%are equidistant and there are an even number of them.
function area = UltimateSimp(x, y);
    total_odds = 0;
    total_evens = 0;
    h = x(2) - x(1);
    for i = 2:2:length(y) - 1 
        total_odds = total_odds + y(i);
    end
    for i = 3:2:length(y) - 1
        total_evens = total_evens + y(i);
    end
    area = (h/3)*(y(1) + 4*total_odds + 2*total_evens + y(length(y)));
end