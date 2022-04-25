% making Ax = b form 
A = [25,5,1;64,8,1;144,12,1];
b = [0,0,0];

%% Get augmented matrix
Ab = [A,b']
n = length(A)

%% With A(1,1) as pivot
%% Row exchange to ensure A(1,1) is the largest in column-1
col1 = Ab(:,1)
[dummy, idx] = max(col1)
dummy = Ab(1,:)
Ab(1,:) = Ab(idx,:)
Ab(idx,:) = dummy

%% Computation in the pivot column
for i = 2:3
    alpha = Ab(i,1)/Ab(1,1)
    Ab(i,:) = Ab(i,:)-alpha*Ab(1,:)
end

%% With (2,2) as pivot
%% Row exchange to ensure A(2,2) is the largest in column-1
col2 = Ab(2:end,2)
[dummy,idx] = max(col2)
dummy = Ab(2,:)
Ab(2,:) = Ab(idx,:)
Ab(idx,:) = dummy

%% Computation in the Pivot column
i = 3;
alpha = Ab(i,2)/Ab(2,2)
Ab(i,:) = Ab(i,:) - alpha*Ab(2,:)


%% Back substitution
x = zeros(3,1)
for i = 3:-1:1
    x(i) = (Ab(i,end)-Ab(i,i+1:n)*x(i+1:n))/Ab(i,i)
end
