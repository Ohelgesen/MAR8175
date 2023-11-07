clc;
clear all;
close all;

% NB! Some of these parameters are synthetic values as they where not  
%     avaiable online, to allow for calculations to be completed :) 

% Defining parameters from the Ampere MF vessel
Thrust = 5000;      % Newtons
Main_ep = 450*2;    % Kw    
p = 1025;           % kg/m^3
Area_prop = 2;      % m^2
Velocity = 10;      % m/s    
Energy_cons = 1000; % kWh
Distance = 100000;  % m


% Calculations for Thrust Coefficent
CT = Thrust / (0.5 * p * Area_prop * (Velocity^2))

% Calculations for Propulsions Power Efficiency
PPE = (Thrust * Velocity) / Main_ep

% Calculations for Specific Energy Consumption
SEC = Energy_cons / Distance