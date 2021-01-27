%% Continuous System Equivalence
% Prepared for EGLM03 Modern Control Systems by Chris P. Jobling
%% Example
% $$G(s) = \frac{a}{s + a}$$
% 
% Let a = 1

a = 1;
% Then
Gs = tf([a],[1, a])
%% Sample period
%%
Ts = 1/10; % seconds
%% Hold equivalent
%%
Gz_zoh = c2d(Gs, Ts, 'zoh')
%% 
% This is also default
%%
Gz_zoh = c2d(Gs, Ts)
%% 
% Plot Result
%%
step(Gs,'-',Gz_zoh,'--')
%% Approximation by numerical-integration
% also known as bilinear transform or Tustin equivalent
%%
Gz_tustin = c2d(Gs, Ts, 'tustin')
%% 
% Plot Result
%%
step(Gs,'-',Gz_tustin,'--')
% Matched pole-zero mapping
Gz_mpz = c2d(Gs, Ts, 'matched')
%% 
% Plot result
%%
step(Gs,'-',Gz_mpz,'--')
%% Other supported equivalents?
%%
help c2d