%Lab2

% Some matrix arithmetic
A=[1,2,4; -3,1,2;6,2,1];
B=[2,5,1; 4,2,1; 3,6,-1];
C=[4,3;-1,-1;2,1];

% First, check the sizes
d=size(A); %rows
size(d); %collumns


[m,n]=size(B); % assigning size to an array of variables to easily show

d=size(C);



% Now check addition
A+B;
% First time through remove comment on next line
% A+C
% Subtraction is the same
A-B;
% Now look at multiplication
% First square matrices
A*B;

B*A; %woah these yield different results

A*B-B*A; %these are the same size so this works

%C*A %3 by 2 cannont be done, but 2 by 3 can 

A*C;





%Now define special matrices
zero=zeros(4,3);

I=eye(3,4);



% When we need test cases,
% we can generate random matrices
% Notice they are not integers! They are always between 0 & 1
R=rand(5,6);

%to adjust the magnitude, you have to multiply it by the order which you
%want

R=100*rand(5,6);



% Now that row reduction rref command
% Let us take some problems from the book.
% Section 1.2.21
% 2 I1 - I2 + 3 I3 + 4 I4 = 9
% I1 - 2 I3 + 7 I4 = 11
% 3 I1 - 3 I2 + I3 + 5 I4 = 8
% 2 I1 + I2 + 4 I3 + 4 I4 = 10 

Q21=[2,-1,3,4,9;1,0,-2,7,11; 3,-3,1,5,8;2,1,4,4,10];
Q21rref=rref(Q21); %this is really damn useful

% Another problem:
% 1.2 Q7
% x-y+2z-w=-1
% 2x+y-2z-2w=-2
% -x+2y-4z+w=1
% 3x-3w=-3
Q7=[1,-1,2,-1,-1;2,1,-2,-2,-2; ...
-1,2,-4,1,1;3,0,0,-3,-3];
Q7rref=rref(Q7);


% Elements and Partitioning
Q7(3,2); %this is how we extractr a single entry from a matrix
Q21(1,4);

% extract a row
Q7r2= Q7(2,1:5); %note, this is just the naming

% extract a column
Q21c3=Q21(1:4,3);

%try to extract the second two entreis on the 2nd row of the matrixs Q7

Q7r2=Q7(2,1:5);





% Construct a matrix in pieces
% Use Q37
% N.B. you will get more from this example
% if you work through
% the problem first
% Make the 4 columns for the coefficients
Q37c4=ones(4,1);
Q37c3=[0;1;3;4];
Q37c2=Q37c3 .^2;
Q37c1=Q37c3 .^3;

% Now put the 4 columns together to get
% the coefficient matrix
Q37coeff = [Q37c1,Q37c2,Q37c3,Q37c4];
Q37y = [10;7;-11;-14];
Q37 = [Q37coeff,Q37y];


% inverses: use section 1.5 example 4
S15E4=[8,0,1;3,2,1;3,5,2];
S15E4inv=inv(S15E4);
% Matlab prints the two matrices differently
% This is because it does not know that
% S15E4inv contains integers
% We can clean it up using the "round" function
S15E4inv=round(S15E4inv);

% And we can verify the answer by multiplying
S15E4inv*S15E4;
S15E4*S15E4inv;




% rounding problems
% Actually, I tricked you a little in the
% last example
% I rigged it up carefully.
% Let us re-arrange the columns
S15=[S15E4(:,3),S15E4(:,2),S15E4(:,1)];
S15inv = inv(S15);
I=S15inv*S15;
% Why is one zero printed differently?
% Let us look more closely
I(2,3);
% That small number is the result of rounding errors. they're not 0s
% they're just super tiny


% In Matlab, all numbers are approximate,
% and are subject to errors, usually small.
% Studying the accuracy of numerical computing
% is the subject of numerical analysis.



% Using polyfit for polynomial fitting of data
% We can solve the problem above
% using a built-in function Q37 above. First make a row of x values
% using transpose function
x=Q37c3;

% Similarly transpose y values
y=Q37y;

% Now decide the degree of the polynomial:
% we want 3
p=plot(x,y,'-');
p=polyfit(x,y,3);
newX = linspace(-1,6,20); %this creates a range that is a equally spaced range. If you increase the number, you will get a better result
newX = linspace(-1,6,100);
newX = linspace(0,4,20); %basically, the desnity of the points increases so we get a more accurate graph


newY = polyval(p,newX); %this evaluates the equation you got from the polyfit p for your new x. The output of this line is the output of the poynomial. 
plot(x,y,'*',newX,newY,'+');

%So, this plot function normall reads ploy(horizontal axis, vertical axis, 
%point to represent)

%now, we're using an overload that gets us our plot and a second "fitted" 
%series of data.

%plot(horizontal axis,Y1,point visual,fitted x, fitted y, fitted point visual);

%the fitted series is based off the original series and this allows us to
%predict accurate points between data that has been given to us. It's a
%line of best fit, but it's exact and gives us legit things

% We can show we are right by plotting the data and the curve
%plot(x,y,’*’,xplot,polyval(p,newX))







