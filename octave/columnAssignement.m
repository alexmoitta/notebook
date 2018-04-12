
% column assignement

C = magic(5)
C =

   17   24    1    8   15
   23    5    7   14   16
    4    6   13   20   22
   10   12   19   21    3
   11   18   25    2    9

C(:,2) = [0,0,0]
% it's gonna cause this error - error: A(I,J,...) = X: dimensions mismatch


C(:,2) = [0;0;0;0;0]

C

%C =
%   17    0    1    8   15
%   23    0    7   14   16
%    4    0   13   20   22
%   10    0   19   21    3
%   11    0   25    2    9


