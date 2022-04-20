% From tylor series we get maclourin's series 
% Maclaurin's Series e^x = 1 + x + x^2/2! + x^3/3! + -----
% Absolute relative approximation error =
% (present approximation-previous approximation)/previous approximation


%% Question
% Calculate the value of e^1.2 -- with an 
% absolute relative approximation error
% of less than 1%

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
i = 1:5;    
apprxRelaError = abs(expVal(i)- expVal(i+1));
apprxPercent = (apprxRelaError)./(expVal(i+1)) * 100;




  

