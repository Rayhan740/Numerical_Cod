%% Equation x^3 - 0.165*x^2 + 3.993*10^-4

%% Initial conditions
x0 = 0.05;
maxIter = 3;


%% computation using newton raphson
x = x0;
xold = x0;

for i = 1:maxIter
    f =  x^3 - 0.165*x^2 + 3.993*10^-4;
    df = 3*x^2 - 0.33*x ;
    x = x - f/df;
    err = abs(x-xold)/x * 100;
    xold = x;
end

%% For number of significant digits at least correct
m = 2-log(err/0.5);
