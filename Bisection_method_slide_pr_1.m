% Given Equation x^3 - 0.165*x^2 + 3.993*10^-4


%% Initial guesses
xl = 0.00;
xu = 0.11;

fl = xl^3 - 0.165*xl^2 + 3.993*10^-4;
fu = xu^3 - 0.165*xu^2 + 3.993*10^-4;

if (fu*fl) > 0 
    error("Sign of the initial guesses must be different");
end

%% Iteration using Bysection method
maxIter = 3;
for i = 1:maxIter
    xNew = (xl+xu)/2;
    fNew =  xNew^3 - 0.165*xNew^2 + 3.993*10^-4;
    err = ((abs(xNew-xu))/xNew)*100;
    
  if (fl*fNew > 0)
    xl = xNew;
    fl = fNew;
  else 
    xu = xNew;
    fu = fNew;
  end

end

%% Hence the number of significant digits at least correct

 m = 2 - log(0.2/0.5);
 
%% Plotting 

s = 1:0.1:100;
y = s.*s.*s - 0.165.*s.*s + 0.0003993;
plot(s,y);










