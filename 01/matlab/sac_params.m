% SAC_PARAMS - define coefficients for Satellite Tracking Azimuth Control System

%% Physical parameters

%%% Motor plus load
Ja = 0.02;     % kg m^2
Da = 0.01;     % N m s/rad
Jl = 1;        % kg m^2
Dl = 1;        % N m s/rad
N1 = 25;       % -
N2 = 250;      % -
N3 = 250;      % - 
Kg = N1/N2;    % - 
Ra = 8;        % Ohm
Kb = 0.5;      % V s/rad
Kt = 0.5;      % N m/A

%%% Power Amp
a = 100;       % -
K1 = 100;      % s^{-1}

%%% Potentiometer

n = 10;        % -
V = 10;        % Volt

%%% Model params

Kpot = (2*V)/(n*2*pi); % V/rad   

Jm = Ja + Jl*(N1/N2)^2; % kg m^2
Dm = Da + Dl*(N1/N2)^2; % N m s/rad

Km = Kt/(Ra*Jm);             % units?
am = (1/Jm)*(Dm + Kt*Kb/Ra); % units?

Kg = N1/N2; % -

K = 1;
