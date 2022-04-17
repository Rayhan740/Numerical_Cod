% Using Bisection method for problem f(x) = 3x - cosx - 1

%% Initial Guesses
xl = 1;
xu = -2;

fl = 3*xl - cos(xl) - 1;
fu = 3*xu - cos(xu) - 1;

%% Check if the sign of the initial guesses are same or not
if(fl*fu>0)
    error('Initial guesses should have different sign');
end

%% Iterative solution using Bisection Method
maxIter = 25;
for i= 1 : maxIter
    err = abs(xl-xu);
    xNew = (xl+xu)/2;
    fNew = 3*xNew - cos(xNew) -1;
    
if(xl*fnew>0)
    xl = xNew;
    fl = fNew
else 
    xu = xNew;
    fu = fNew;

end

end
