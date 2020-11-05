function q = Rot2Quat(M)

% Init for a cleaner code
r11 = M(1,1); r12 = M(1,2); r13 = M(1,3);
r21 = M(2,1); r22 = M(2,2); r23 = M(2,3);
r31 = M(3,1); r32 = M(3,2); r33 = M(3,3);

%Find the magnitude of each quaternion component.
%This leaves the sign of each component undefined:

q0 = abs(sqrt( 1 + r11 + r22 + r33)*0.5);
q1 = abs(sqrt( 1 + r11 - r22 - r33)*0.5);
q2 = abs(sqrt( 1 - r11 + r22 - r33)*0.5);
q3 = abs(sqrt( 1 - r11 - r22 + r33)*0.5);

% To resolve the signs, find the largest of q0, q1, q2, q3
% and assume its sign is positive.
q_ =[q0 q1 q2 q3];
option = max(q_);

% Rewrite the values so we don't have to store new ones
switch option
    
    case q0
        q1 = (r32 - r23)/(4*q0);
        q2 = (r13 - r31)/(4*q0);
        q3 = (r21 - r12)/(4*q0);
    case q1
        q0 = (r32 - r23)/(4*q1);
        q2 = (r12 + r21)/(4*q1);
        q3 = (r13 + r31)/(4*q1);
    case q2
        q0 = (r13 - r31)/(4*q2);
        q1 = (r12 + r21)/(4*q2);
        q3 = (r23 + r32)/(4*q2);
    case q3
        q0 = (r21 - r12)/(4*q3);
        q1 = (r13 + r31)/(4*q3);
        q2 = (r23 + r32)/(4*q3);
        
end


% Unitary quaterion
q = [q0 q1 q2 q3]';

end