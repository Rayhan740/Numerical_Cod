%% Initial Guesses 
x = 2;
h1 = 0.3;
h2 = 0.15;

%% for h1 
fx = 7*exp(0.5*x);
fxh = 7*exp(0.5*(x+h1));

%% Approximation value of f'(2) for h1
apprxVal = (fxh-fx)/h1;

%% for h2
fx = 7*exp(0.5*x);
fxh = 7*exp(0.5*(x+h2));

%% Approximation value of f'(2) for h2
apprxValue = (fxh-fx)/h2;

%% Approximation error 
Ea = abs(apprxValue-apprxVal);

%% Relative approximation error
ea = Ea/apprxValue;

%% Absolute relative approximation error
eaPercent = ea*100;
