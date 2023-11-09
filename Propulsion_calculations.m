clc;
clear all;
close all;

% NB! Some of these parameters are synthetic values as they where not  
%     avaiable online, to allow for calculations to be completed :) 


% Defining parameters for the Ampere MF vessel
Velocity = 5.144;               % m/s (10 knots)    
Main_ep = 450000*2;             % W   
p = 1025;                       % kg/m^3 
D_prop = 2;                     % m^2              (Assumed)
Energy_cons = 1000;             % kWh              (Assumed)
Distance = 10000000/1852;       % Nautical mile nm (Assumed)

Thrust = Main_ep / Velocity;    % Newtons


% Calculations for Thrust Coefficent
CT = Thrust / (p * (Velocity^2) * D_prop^4)

% Calculations for Propulsions Power Efficiency
% Assuming there will be some kind of losses
Loss = 0.9;
PPE = ((Thrust * Velocity) / Main_ep) * Loss

% Calculations for Specific Energy Consumption
SEC = Energy_cons / Distance