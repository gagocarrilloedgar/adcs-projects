

%% Cleaning the space & termianl
clc; clear; close all;

%% Main code 

%% Problem 2.6
psi = -30;   %[deg]
theta = 40; %[deg]
phi = 20;   %[deg]

R_313 = rotz(psi)*rotx(theta)*rotz(phi);
[e, theta] = eulangle2axis(R_313);

%% Problem 2.7
theta = deg2rad(45);
e =(1/sqrt(3))*[1;1;1];
[R,theta,phi,psi] = axis2euler(e,theta);


%% Problem 2.9
theta = -20;  %[deg]
v = [0 0 1]; % z axis

% Compute rotation matrix
Rx = rotx(theta);
vq = Rx*v';
q_1 = Rot2Quat(Rx);
vq_ = QuanternionRotation(v,q_1);

%% Problem 2.11

v = [1,2,1];
q = [1,2,0,1];
v_q = QuanternionRotation(v,q);

%% Problem 2.14
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
