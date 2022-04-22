%% Declaring initial conditions
x = 1.2;
n = 0:6 ;

%% Maclourin series 
terms = x.^n./(factorial(n));
expVal = cumsum(terms);

%% True Value
trueVal = exp(x);
    
%% Absolute relative approx error
err = 0.1;
for i = 1:5;    
    apprxRelaError(i) = abs(expVal(i)- expVal(i+1));
    apprxPercent(i) = (apprxRelaError(i))./(expVal(i+1)) * 100;
    if apprxPercent(i) < 0.1
        break;
    end
end


%% For significant digits
SigD = 0.5*10^(2-1);
















