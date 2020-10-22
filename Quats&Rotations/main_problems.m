

%% Cleaning the space & termianl
clc; clear; close all;

%% Main code 

% Problem 2.9
theta = 20;  %[deg]
v = [0 0 1]; % z axis

% Compute rotation matrix
v_ = QuanternionRotation(theta,v);


% Problem 2.14
psi = 30;   %[deg]
theta = 45; %[deg]
phi = 60;   %[deg]
v = [1 1 0];


% Compute rotation matrix
R_313 = Compute313(psi,theta,phi);

%Asociated quaternion
q = Rot2Quat(R_313);

% Rotation using R313
v_r = R_313*v';

% Rotation using quaternions
v_q = QuanternionRotation(phi,v,quat);
