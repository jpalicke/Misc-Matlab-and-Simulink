clc
close all
clear all

% Task 2: Modified Script from doc
v=0.8;							% variance 
m=1;							% mean value
x=sqrt(v)*randn(1,50)+m*ones(1,50);		% Gaussian distribution
figure(1) 						% Open a new blank figure
hist(x);
xlabel('amplitude');
ylabel('number of points');
title('number of points at varied amplitudes');

% count random numbers below zero

working = [];                   % from board.  Create working array
for i = 1:1:length(x)           % step through x, if less than zero
    if x(i) < 0;                % add to working array
        working = [working x(i)];
    end
end

[count less_than_zero] = size(working);  % put number of elements in
                                         % working array in less_than_zero
disp('The number of values in x less than zero is: ');
disp(less_than_zero);                    % display answer

% Task 2 part 2 plot g1(t)=4sinc(t-3)

t = linspace(-10,10,200);       % Define t.  0 to 5 in .2 intervals is 25 points
g1 = 4.*sinc(t-3);
figure(2);                      % New figure
plot(t,g1);                     % Continuous graph
title('g1(t)=4sinc(t-3)');
xlabel('t');
ylabel('g1(t)');

% Task 2 part 3 plot g2(t)= 5exp(–t/3)u(t)

t = linspace(0,5,500);          % Define t.  0 to 5 in .2 intervals is 25 points
g2 = 5.*exp(-t./3);              % unit step not needed; linspace 0 to 5
figure(3);                      % New figure
plot(t,g2);                     % Continuous graph
title('g2(t)= 5exp(–t/3)u(t)');
xlabel('t');
ylabel('g2(t)');

% Task 2 part 3 plot g2(t)= 5exp(–t/3)u(t)

t = linspace(0,2.*pi, 314);     % Define t.  0 to 2pi in .01 intervals is 314 points
g2 = exp(-t).*sin(6.*pi.*t);
figure(4);                      % New figure
plot(t,g2);                     % Continuous graph
title('g2(t) = exp(–t)sin(6?t)');
xlabel('t');
ylabel('g2(t)');

% Task 2 part 3 find energy

E = integral(@(t) abs(5.*exp(-t./3)).^2,0,Inf);
disp(sprintf('The Energy of g2(t)= 5exp(–t/3)u(t) is: %2.1f J', E));
E = integral(@(t) abs(exp(-t).*sin(6.*pi.*t)),-Inf,Inf);

disp(sprintf('The Energy of g2(t) = exp(–t)sin(6?t) is: %2.1f J', E));

disp(' ');
disp('Both signals are non-periodic, but only the first has finite energy.');
disp('This makes 5exp(–t/3)u(t) an energy signal as it has finite energy');
disp('g2(t) = exp(–t)sin(6?t) has infinite energy, so it is NOT an energy signal');
disp('Neither signal is a power signal');
disp(' ');

% Task 2 part 4

t = linspace(0,2.*pi, 314);     % Define t.  0 to 2pi in .01 intervals is 314 points
g3 = sin(6.*pi.*t);
figure(5);                      % New figure
plot(t,g3);                     % Continuous graph
title('g3(t) = sin(6 pi t)');
xlabel('t');
ylabel('g3(t)');

P = integral(@(t) abs(sin(6.*pi.*t)).^2,(-1/3)/2,(1/3)/2) .* 1/(1/3);
disp('');
disp(sprintf('The Power of g3(t) = sin(6 pi t) is %1.1f W',P));


