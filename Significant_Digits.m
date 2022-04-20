% How many terms required to get at least one significant digits
% Error tolerance formula = 0.5 * 10^(2-M) ; M = number of sig digits

%% Initial guesses 
M = 1;

%% Computing the terms 
terms = 0.5*10^(2-M);
