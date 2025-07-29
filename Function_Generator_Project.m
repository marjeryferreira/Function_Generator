% Function_Generator_Project.m
% This code will generate a function of your choice and plots it in real time.
clear % clears workspace
clc %clears command window

%Displaying Information about the project
disp('                     Function Generator Project')
disp('              by: Marjery Ferreira and Abishai Albert')
fprintf('\nThis code will generate a function of your choice and plots it in real time.\n')
fprintf('\n The Function Choices are:\n')

%Display the function choices the user has to choose from
fprintf(['\n 1-Impulse      2-Square         3-Triangular ' ...
    '\n 4-Sawtooth     5-Sinusoidal     6-Sinc\n\n']);
%create a variable 'shape' to store the function the user chooses as a string
shape = input('Enter the name of the function you would like to generate:', 's');

%create a variable 'amplitude' to stor the user's input for amplitude of
%the function
amplitude = input('\nEnter the amplitude of your function:');

%create a variable 'Period' to store the user's input for the period of the
%function
Period = input('\nEenter the time period of your function in seconds:');

%create a time array with the final period as the end of the time with a
%step of 0.1
time = 0:0.1:Period;

%display the function, amplitude and period chosen by the user.
disp(['You chose a ' shape ' function with an amplitude of ' num2str(amplitude) ' and a time period of ' num2str(Period) ' seconds.']);

%create a switch case that will generate a function based on the shape
%inputted by the user
x = shape;
switch x
    case {'1','Impulse', 'impulse', 'IMPULSE'}
        x = amplitude * (time == 0);
    case {'2','Square', 'square', 'SQUARE'} 
        x = amplitude * square(2*pi*time);
    case {'3','Triangular', 'triangular', 'TRIANGULAR'}
        x = amplitude * sawtooth(2*pi*time, 0.5);
    case {'4','Sawtooth', 'sawtooth', 'SAWTOOTH'}
        x = amplitude * sawtooth(2*pi*time,1);
    case {'5','Sinusoidal', 'sinusoidal', 'SINUSOIDAL'}
        x = amplitude * sin(2*pi*time);
    case {'6','Sinc', 'sinc', 'SINC'}
        x = amplitude * sinc(time);
    otherwise
        disp('The function choice you entered is invalid')
end

%create the live motion of the graph with the animatedline function and
%store it in variable 'h'
h = animatedline;
%create a for loop the will plot the points on the fucnction generator
for k = 1:length(time)
    addpoints(h,time(k),x(k));
    drawnow
    pause(0.05)
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%                      Function Generator Project
%                 by: Marjery Ferreira and Abishai Albert

%This code will generate a function of your choice and plots it in real time.

% The Function Choices are:

 %1-Impulse      2-Square         3-Triangular 
 %4-Sawtooth     5-Sinusoidal     6-Sinc

%Enter the name of the function you would like to generate:
%Impulse

%Enter the amplitude of your function:
%2

%Eenter the time period of your function in seconds:
%2
%You chose a Impulse function with an amplitude of 2 and a time period of 2 seconds.