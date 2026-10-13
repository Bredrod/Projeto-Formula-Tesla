simulink
% Vehicle physical constants

m = 285; % vehicle_mass (Kg)
Iz = 120; % Vehicle principal axis moment of inertia (Kg m²)
Jf = 0.1381; % Front wheel moment of inertia (Kg m²)
Jr = 0.1376; % Rear wheel moment of inertia (Kg m²)
Cl = -3.5; % Lift coefficient of vehicle body related to center of pressure
Cd = 1.3; % Drag coefficient related to the center of pressure 
A = 1.19; % Aerodynamic reference area (m²)
rho = 1.225; % Air density (Kg/m³)
G = 9.81; % Gravity force (m/s²)


% Vehicle geometry and tire parameters

R = 0.2; % Tire radius (m)
Wb = 1.54; % Vehicle wheel base (m)
h = 0.27; % Height of the center of gravity (m)
Lf = 0.72; % Longitudinal distance of the front axle from the center of gravity (m)
Lr = 0.82; % Longitudinal distance of the rear axle from the center of gravity (m)
CoPF = 0.68; % Longitudinal distance of the front axle from the center of pressure (m)
CoPR = 0.86; % Longitudinal distance of the rear axle from the center of pressure (m)


% Constants for Pacejka formula

Cx = 1.4; % Longitudinal shape factor
Dx = 1.4; % Longitudinal peak factor 
Bx = 16.5; % Longitudinal stiffness factor
Ex = -1; % Longitudinal curvature factor
Cy = 1.45; % Lateral shape factor 
Dy = 1.4; % Lateral peak factor
By = 18.4; % Lateral stiffness factor 
Ey = -0.3; % Lateral curvature factor
Cz = 3.75; % Shape factor for aligning torque
Dz = -0.03; % Peak factor for aligning torque
Bz = 11.0; % Stiffness factor for aligning torque
Ez = 0.9;  % Curvature factor for aligning torque


% Init values for simulation

v_init = 5;      % The car starts moving at 5 m/s.
beta_init = 0;   % Starts without lateral skidding.
omega_init = 0;  % Wheels start at a standstill (or adjusted to the initial speed).
