% Finding error
%% Question
% f(x) = 7e^0.5x and h = 0.3
% a) Find the approximate value of f'(2)
% b) True value of f'(2)
% c) True error for part(a)

%% for approximate value
funct = 7*exp(0.5*2);
h = 0.3;
apprVal = ((7*exp(0.5*(2+h)))-(7*exp(0.5*2)))/h;

approximate_Value = apprVal;

%% For True value
df = 7*0.5*exp(0.5*2);
TrueValue = df;

%% Finding True error
True_error = approximate_Value - TrueValue;

%% Outcome
approximate_Value
TrueValue
True_error
