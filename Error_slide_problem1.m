%% Initial Guesses 
x = 2;
fx = 7*exp(0.5*x);
fxh = 7*exp(0.5*(x+h));
h = 0.3;

%% Approximation value for f'(2)
apprxVal = (fxh-fx)/h;

%% True Value of the f'(2)
TrueVal = 7*0.5*exp(0.5*x);

%% True Error
Et = abs(TrueVal-apprxVal);

%% Relative True Error
et = Et/TrueVal;

%% As a percentage 
etPercent = et*100;