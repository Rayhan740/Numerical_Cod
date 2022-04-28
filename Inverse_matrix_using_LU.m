%% Inverse of a matrix using LU decomposition

A = [25,5,1;64,8,1;144,12,1];
b = [1,0,0];

%% Gauss Elimination

% Get augmented matrix
Ab = [A,b'];
n = 3;

L = eye(n);

%% Forward Elimination

% With A(1,1) as a pivot element
for i = 2:3
   alpha = Ab(i,1)/Ab(1,1);
   L(i,1) = alpha;
   Ab(i,:) = Ab(i,:) - alpha*Ab(1,:);
end

% With A(2,2) as a pivot element 
i = 3;
alpha = Ab(i,2)/Ab(2,2);
L(i,2) = alpha;
Ab(i,:) = Ab(i,:) - alpha*Ab(2,:);

U = Ab(1:n,1:n);

%% Now LZ = C

z(1) = b(1,1);
z(2) = b(1,2) - z(1)*L(2,1);
z(3) = b(1,3) - z(2)*L(3,2) - z(1)*L(3,1);

z = [z(1),z(2),z(3)];

%% Now UX = Z

x(3) = z(3)/U(3,3);
x(2) = (z(2) - U(2,3)*x(3))/U(2,2);
x(1) = (z(1) - U(1,2)*x(2)-U(1,3)*x(3))/U(1,1);

x = [x(1);x(2);x(3)];


%% Now we will go for the second column
A = L*U;
b2 = [0,1,0];

Ab2 = [A,b2'];

L2 = eye(n);

for i = 2:3
   alpha2 = Ab2(i,1)/Ab2(1,1);
   L2(i,1) = alpha2;
   Ab2(i,:) = Ab2(i,:) - alpha2*Ab2(1,:);
end

i = 3;
alpha2 = Ab2(i,2)/Ab2(2,2);
L2(i,2) = alpha2;
Ab2(i,:) = Ab2(i,:) - alpha2*Ab2(2,:);

U2 = Ab2(1:n,1:n);

%% Now LZ = C

z2(1) = b2(1,1);
z2(2) = b2(1,2) - z2(1)*L2(2,1);
z2(3) = b2(1,3) - z2(2)*L2(3,2) - z2(1)*L2(3,1);

z2 = [z2(1),z2(2),z2(3)];

%% Now UX = Z

x2(3) = z2(3)/U2(3,3);
x2(2) = (z2(2) - U2(2,3)*x2(3))/U2(2,2);
x2(1) = (z2(1) - U2(1,2)*x2(2)-U2(1,3)*x2(3))/U2(1,1);

x2 = [x2(1);x2(2);x2(3)];


%% We will compute third column
b3 = [0,0,1];

Ab3 = [A,b3'];

L3 = eye(n);

for i = 2:3
   alpha3 = Ab3(i,1)/Ab3(1,1);
   L3(i,1) = alpha3;
   Ab3(i,:) = Ab3(i,:) - alpha3*Ab3(1,:);
end

i = 3;
alpha3 = Ab3(i,2)/Ab3(2,2);
L3(i,2) = alpha3;
Ab3(i,:) = Ab3(i,:) - alpha3*Ab3(2,:);

U3 = Ab3(1:n,1:n);

%% Now LZ = C

z3(1) = b3(1,1);
z3(2) = b3(1,2) - z3(1)*L3(2,1);
z3(3) = b3(1,3) - z3(2)*L3(3,2) - z3(1)*L3(3,1);

z3 = [z3(1),z3(2),z3(3)];

%% Now UX = Z

x3(3) = z3(3)/U3(3,3);
x3(2) = (z3(2) - U3(2,3)*x3(3))/U3(2,2);
x3(1) = (z3(1) - U3(1,2)*x3(2)-U3(1,3)*x3(3))/U3(1,1);

x3 = [x3(1);x3(2);x3(3)];


%% So the inverse matrix is 
AInverse = [x,x2,x3];