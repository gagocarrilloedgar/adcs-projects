function [e,theta_v] = eulangle2axis(M)

% Init for a cleaner code
r11 = M(1,1); r12 = M(1,2); r13 = M(1,3);
r21 = M(2,1); r22 = M(2,2); r23 = M(2,3);
r31 = M(3,1); r32 = M(3,2); r33 = M(3,3);

theta = acos((r11 + r22 + r33-1)/2);
theta_ = 2*pi - theta;
theta_v = [theta, theta_];
 
c = 2*sin(theta);
e1 = (r32-r23)/c;
e2 = (r13-r31)/c;
e3 = (r21-r12)/c;

e = [e1 e2 e3];
e = e/norm(e);
end