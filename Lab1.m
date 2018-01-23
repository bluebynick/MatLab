% comments start with percent
% may be useful for later review
% to run you go editor/run. (f5 shortcut)
% to change font size it's home/preferences/fonts then change the size
% looks like it's saved in my "wester D drive"
% so it looks like it ouputs what's not semi-coloned
% So it looks like it's not linear. It only runs one line of code. It 
    % doesn't run line 47 then line 48. It only runs the non semi-coloned
    % and not together. It applies an operation to the base variable then
    % does not change that variable in memory. The next operation would be
    % applied to the base variable.
% When you type the beginning of a method you get intellisense

%defining variables

x = 1;  %the semi colon prevents the program from outputting 1. This is 
        %like R, with the variables in the window to the right
        
y = 2;
z = x+y;

%ans stores the result of the last opeartion if no variable has been
%assigned

x-y;
q = ans +1; %in this case ans is x-y;


%defining lists
x = [2,5,-4];   %you can reuse variables. in this case i'm reassigning x 
                %to an array
                
z = [1:100];    % z is an array that is equal to all the numbers from 1 to 
                % 100. If you want to see it, just run without the
                % semi-colon
                
z = [0:2:100];  % all the even numbers from 0 to 100   



%operations with lists
x+1;

y = [1,2,3];

x+y;            % when adding or subtracting, make sure the lenghts are 
x-y;            % the same 


%x*y;           % note, you cannot multiplt two lists with * operator.
2*x;            % However, this is appropriate.
x.^2;           % You can raise lists to powers with .^


x/2;
2./x;


% plot using ploy(x,y) where
    % x is the list of x-coordinates
    % y is the list of y-coordinates
    
% ex. if you want to draw a straight line segement from (1,2) to (5,6)

plot([1,5],[2,6]);      % note: these plots run through semi-colons


% ex. if you want to draw a straight line segement from x to y

x = [0,1,2,0];
y = [0,-1,5,0];
plot(x);                % note: it plots everything in the "plot" command
                        % so you can create shapes with different lines

z = [-3:0.01:3]
plot(z,sin(z));         % hmmm this is cool. the data then the function
                        % Also, it looks like this nullifies the previous 
                        % plots... hmmm
                        
                        
                        
% Evaluating and plotting polynomial functions
    %We use the polyval(list,value) where:
        % - list is the list of coefficients of a polynomial
        % - value is the value at which you want the polynomial to be
        %   evaluated

% ex. p(x) = 2x^2 -4x + 1 evaluated for p(-2)

polyval([-2,-4,1], -2); %this outputs 1
p = [-2,-4,1];
z = [-10:0.1:10];
plot(z,polyval(p,z));


% this very helpful to check your answers for lin alg homwork
