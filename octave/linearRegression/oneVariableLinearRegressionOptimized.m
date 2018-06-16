%% Initialization
clear ; close all; clc


data = [1,0,4;1,1,7;1,2,7;1,3,8];
%x = [0;1;2;3];
%y = [4;7;7;8];

options = optimset('GradObj','on','MaxIter',100);
initialTheta = zeros(2,1);

%[opTheta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options);
[opTheta, functionVal, exitFlag] = fminunc(@(x)costFunction ...
    (data,initialTheta),initialTheta,options)
