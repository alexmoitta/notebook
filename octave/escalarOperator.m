a = [1; 1; 1]
b = [2; 3; 4]


a * b % this is not possible - a is 3 x 1 dimension and b is also 3 x 1 

a .* b %this is possible because each element of a will be multiplied by each element of b 

a .- b %this is possible because each element of a will be subtracted by each element of b

A = magic(3) 

A .- 1 %this subtracts one from each number in A 