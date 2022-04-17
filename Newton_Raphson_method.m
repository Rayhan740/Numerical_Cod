% Using Newton Raphson method to solve non-linear equation 
% problem f(x) = 3x - cosx - 1

%% Initial conditions
x0 = 1;
maxIter = 50;
tolx = 1e-4;

%% computation using neton raphson
x = x0;
xold = x0;

for i = 1:maxIter
    f = 3*x - cos(x) + 1;
    df = 3 + sin(x);
    x = x - f/df;
    err= abs(x-xold);
    xold = x;
    if(err < tolx)
        break;
    end
end