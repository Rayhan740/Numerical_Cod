%% Question
% a) Determine the real roots of f(x) = -0.5x^2 + 2.5x + 4.5 using quadraic
% formula
% b) Determine the approximate root using 3 iterations of Bisection method
% and employing initial guesses of xl = 5, xu = 10
% c) Complete Ea(%) and Et(%) in each iteration

%% Initial guesses
a = -0.5;
b = 2.5;
c = 4.5;
d = b*b - 4*a*c;

if d > 0
    root1 = (- b + sqrt(d))/(2*a);
    root2 = (-b - sqrt(d))/(2*a);
elseif d == 0
     root1 = -b/(2*a) ;
     root2 = root1;
end     
    
%% For approximate value using Bisection method as said

%% Initial guesses 
maxIter = 3;
xl = 5;
xu = 10;

fl = -0.5*(xl)^2 + 2.5*xl + 4.5;
fu = -0.5*(xu)^2 + 2.5*xu + 4.5;

%% Checking if the sign of fl and fu are different
if(fl*fu>0)
    error('Initial guesses should have different signs');
end

%% Iteration using Bysection method
for i = 1:maxIter
    err = abs(xl-xu);
    xNew = (xu+xl)/2;
    fNew = -0.5*(xNew)^2 + 2.5*xNew + 4.5;
    
    if (fl*fNew>0)
        xl = xNew;
        fl = fNew;
    else 
        xu = xNew;
        fl = fNew;
    end
end

%% There is a problem i have to find for each iteration
%% For relative true error Et(%) and also relative approximation error Ea(%)
Et = abs(root2 - xNew)*100
Ea = (err/xl)*100

