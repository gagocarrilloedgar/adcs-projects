

%% Cleaning the space & termianl
clc; clear; close all;

%% Main code 

%% Problem 2.6
fprintf("\n #### PROBLEM 2.6 ####\n");
psi = -30;   %[deg]
theta = 40; %[deg]
phi = 20;   %[deg]

R_313 = rotz(psi)*rotx(theta)*rotz(phi);
[e, theta] = eulangle2axis(R_313);
fprintf("e:\n"); disp(e);
fprintf("\n");
fprintf("theta: \n "); disp(rad2deg(theta));

%% Problem 2.7

fprintf("\n #### PROBLEM 2.7 #### \n");
theta = deg2rad(45);
e =(1/sqrt(3))*[1;1;1];
[R,theta,phi,psi] = axis2euler(e,theta);
fprintf("R: \n"); disp(R);
fprintf("\n");
fprintf("theta: %.4f \n",rad2deg(theta));
fprintf("phi: %.4f \n",rad2deg(phi));
fprintf("psi: %.4f \n",rad2deg(psi));

%% Problem 2.9

fprintf("\n #### PROBLEM 2.9 #### \n");

theta = -20;  %[deg]
v = [0 0 1]; % z axis

% Compute rotation matrix
Rx = rotx(theta);
vq = Rx*v';
q_1 = Rot2Quat(Rx);
vq_ = QuanternionRotation(v,q_1);

fprintf("Rx: \n");
disp(Rx);
fprintf("v' using Rx:\n"); disp(vq);
fprintf("Quaternion:\n"); disp(q_1);
fprintf("v' using quaternion:\n"); disp(vq_);

%% Problem 2.11
fprintf("\n #### PROBLEM 2.11 ####\n");

v = [1,2,1];
q = [1,2,0,1];
v_q = QuanternionRotation(v,q);
fprintf("v' using quaternion: \n"); disp(v_q);


%% Problem 2.14

fprintf("\n #### PROBLEM 2.14 ####");

% negative y the rotation is clockwise
psi = -30;   %[deg]
theta = -45; %[deg]
phi = -60;   %[deg]
v = [1 1 0];

% Compute rotation matrix
R_313 = rotz(psi)*rotx(theta)*rotz(phi);

%Asociated quaternion
q = Rot2Quat(R_313);

% Rotation using R313
v_r = R_313*v';

% Rotation using quaternions
v_q = QuanternionRotation(v,q);

fprintf("R_313: \n");
disp(R_313);
fprintf("Asociated Quaternion:\n"); disp(q);

fprintf("v' using R_313:\n"); disp(v_r);
fprintf("v' using quaternion:\n"); disp(v_q);
