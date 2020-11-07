%% ADCS_MASTER
% Author:Gago, Edgar
% Date 07/11/2020
%
%% axis2quat
% Description
% Transform a quaternion to the associated rotation matrix
%
% Inputs
% theta: rotation angle [rad]
%
% Output
% q: associated quaternion [q0;q1;q2;q3]
%
%% CODE

function p = axis2quat(theta)


p0 = cos(theta/2);
p_= sin(theta/2)*ones(3,1);

p = [p0;p_];

end