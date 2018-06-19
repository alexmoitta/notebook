Theta1 = ones(10,11)
Theta2 = 2*ones(10,11)
Theta3 = 3*ones(1,11)

%wrong way to put all togheter in a vector
thetaVec = [ Theta1 ; Theta2 ; Theta3]
size(thetaVec)

%right way
thetaVec = [ Theta1(:) ; Theta2(:) ; Theta3(:)]
size(thetaVec)

CopyTheta1 = reshape (thetaVec(1:110),10,11)
size(CopyTheta1)
CopyTheta2 = reshape (thetaVec(111:220),10,11)
size(CopyTheta2)
CopyTheta3 = reshape (thetaVec(221:231),1,11)
size(CopyTheta3)