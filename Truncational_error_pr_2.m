%% for approximate value
x=3;
h = 0.2; 
funct = x*x;
functH = (x+h)^2;
apprVal = (functH-funct)/h;

approximate_Value = apprVal;

%% For True value
df = 2*x;
TrueValue = df;

%% Truncational error
truncError = abs(TrueValue - approximate_Value);
