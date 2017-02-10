clc
close all
clear all

% Task 1: Generate rand(3), rand(1,3), rand(1,4)

disp('rand(3) generates: ');
disp(rand(3));                  % run and display rand(3)
disp('rand(1,3) generates: ');
disp(rand(1,3));
disp('rand(1,4) generates: ');
disp(rand(1,4));

% Task 2: Run Script from doc: Program to demonstrate generation of Gaussian random variables:
v=25;							% variance 
m=10;							% mean value
x=sqrt(v)*randn(1,1000)+m*ones(1,1000);		% Gaussian distribution
figure(1) 						% Open a new blank figure
stem(x);						% plots data sequence x as stems from the x axis
grid on;						% Include a grid in the figure
xlabel('sample index');         % x-axis label
ylabel('amplitude') ;			% y-axis label
title('generation of Gaussian random variables');	% Include a title to the figure

%% Task 2 continued

figure(2); 						% Opening another blank figure
hist(x,20);						% Represent x in 20 bins
xlabel('amplitude');
ylabel('number of points');
title('number of points at varied amplitudes');

% Task 3

x = linspace(0,5,25);           % Define x.  0 to 5 in .2 intervals is 25 points
g1 = exp(-x).*sin(x.^2);
figure(3);                      % New figure
hold on;                        % Tells matlab to not erase old plot before putting up new
plot(x,g1);                     % Continuous graph
title('g1(x) = exp(–x).*sin(x.^2)');
xlabel('x');
ylabel('g1(x)');
stem(x,g1);                     % discrete stem plot
hold off;                       

% Task 4

x = linspace(-10,10,200);       % 200 points, -10 to 10 in .1 intervals
g2 = sinc(x);
figure(4);
hold on;
plot(x,g2);
title('g2(x) = sinc(x)');
xlabel('x');
ylabel('g2(x)');
stem(x,g2);
hold off;

