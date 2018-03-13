%MatLab Computer Lab 3

% Transformations

% Draw a star

starx1=[1,2,0,-2,-1,-2,0,2,1];
starx2=[0,2,1,2,0,-2,-1,-2,0];
plot(starx1,starx2);

%pause % at every instant this will require you to press a key to continue
         %the script

% Define a matrix for transforming
A = [3 1 ; 1 1];

starX=[starx1;starx2]; %the first parameter is the first row and the second parameter is the second row

starY = A*starX;

plot(starY(1,:),starY(2,:)); %this considers all the elements in the first row of starY matrix etc. 

%pause

% Now, let's draw a circle. In order to do this we will need polar
% coordinates

theta = [-pi : pi]; %this is a matrix when the interval between elements is 1
theta = [-pi : 0.1: pi]; %now we've changed the interval between elemetns and thus we have more elements on the given range
circleX=[sin(theta);cos(theta)];
plot( circleX(1,:),circleX(2,:) );

%pause
circleY=A*circleX;
plot(circleY(1,:), circleY(2,:));
%pause



% Now compare with a singular matrix
Asing=[-1,3;2,-6];
starYs=Asing*starX;
plot(starYs(1,:), starYs(2,:)); %now if we look, this became one line, which we know is a property of a singular matrix 

% And now a singular matrix for the circle
circleYs=Asing*circleX;
plot(circleYs(1,:),circleYs(2,:));
plot(starYs(1,:),starYs(2,:),circleYs(1,:),circleYs(2,:)); %This is both of them on top of each other. The blue line is the star matrix and the circle is the orange line

% Note all points map to straight line
% Verify that ratio of areas is Determinant


% Now, lets plot a triangle
trix1=[0,0,1,0];
trix2=[0,1,0,0];
plot(trix1,trix2);
%pause 

A= [6,1;-4,6];
triX=[trix1;trix2];
triY=A*triX; %note: this is * which means matrix muliptiplication.   .* is scalar multiplication. That's a trick!!
plot(triY(1,:),triY(2,:));

%pause
% Add in the x axis and show the intersection
plot(triY(1,:),triY(2,:),[0,6],[0,0],[4,4],[-2,2]); %each pair defines a line. The firs pair defines my orange line, the second one defines my yellow line. The first point in the pair defines the range on the x-axis, the second point defines the range on the y-axis and together they make a line
det(A);





%Example test question: - What are the solutions if A is the augmented matrix of a system?


A=[ 5,7,4,0,1,0;-4,3,0,3,-2,0;1,5,6,4,-1,4; -1,3,-3,2,4,-3;6,-2,1,7,1,3;1,-9,-3,7,0,3];

%answer

rref(A); %the last row is the answer since it doesn't have any constrains on your problem





%some things on formats

pi; 

format long; % increasing Matlab precission. This is the preffered method to reduce error

pi;

format short % this gives us 4 dec again. If we want precision, put the above on the first line.

%So! If we try again...
A=[ 5,7,4,0,1,0;-4,3,0,3,-2,0;1,5,6,4,-1,4; -1,3,-3,2,4,-3;6,-2,1,7,1,3;1,-9,-3,7,0,3]

rref(A)

%The matlab test will only cover what we have covered so far. 

%So, for the matlab test we need to review:
    %Polynomial commands ex. "polyval" , "inv"
    %Matrix Arithmetic ex. "det", "inv"
    %Scalar Arithmetic
    %Matrix Partioning ex. row/collumn seperation and combining
    %Plot syntax(how to plot things and the parameters of the plot
    %function) 
        %ex. Review how to plot tow figures in the same
        %coordainate system, how to plot a straight line, etc. 
            %1D straight line: plot(series1,series2,series3,...,[-5,5],[0,0]) 
                %each serires got a pair of vectors i.e. series1 = (X1,Y1),
                %series2 = (X2,Y2), etc. 
    %Solve Linear Systems ex. "rref(matrix)" conmmand
    %Define range with some arbitrary step size ex. [1:2:20] also review "linspace"
    
    
%note: this is * which means matrix muliptiplication.   .* is scalar multiplication. That's a trick!!


