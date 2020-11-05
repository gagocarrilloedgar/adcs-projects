function [R,theta,phi,psi] = axis2euler(e,theta)

e1 = e(1);
e2 = e(2);
e3 = e(3);

a11 = (1-cos(theta))*e1^2 + cos(theta);
a22 = (1-cos(theta))*e2^2 + cos(theta);
a33 = (1-cos(theta))*e3^2 + cos(theta);

a12 = (1-cos(theta))*e1*e2 - e3*sin(theta);
a13 = (1-cos(theta))*e1*e3 + e2*sin(theta);
a21 = (1-cos(theta))*e2*e1 + e3*sin(theta);
a23 = (1-cos(theta))*e2*e3 - e1*sin(theta);
a31 = (1-cos(theta))*e3*e1 - e2*sin(theta);
a32 = (1-cos(theta))*e3*e2 + e1*sin(theta);

R = [a11,a12,a13;
     a21,a22,a23;
     a31,a32,a33];

theta = asind(-a13);
phi = atand(a12/a11);
psi = atand(a23/a33);

end