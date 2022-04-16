% to solve 2 - x + log(x) = 0

%% Initial guesses
xl = 1;
xu = 4;

fl = 2 - xl + log(xl);
fu = 2 - xu + log(xu);

%% Checking the sign of fl and fu are same or different
if(fl*fu > 0)
    error('Initial guesses should have different signs');
end

%% Iteration using By Section method
maxIter = 25;
for i = 1:maxIter
    err = abs(xl-xu);
    xNew = (xl+xu)/2;
    fNew = 2 - xNew + log(xNew);

  if (fl*fNew > 0)
    xl = xNew;
    fl = fNew;
  else 
    xu = xNew;
    fu = fNew;
  end

end

    

