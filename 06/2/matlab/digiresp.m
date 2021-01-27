%% Digital system responses
% Prepared for EGLM03 Modern Control Systems by Chris P. Jobling
%% Control System Toolbox Help
% What functions do we have in the controls system toolbox?

help control
%% Transfer function
% Transfer function looks likely
%%
help tf
%% Digital transfer function block
% It seems that that the third argument is sampling period. Set this to -1 for 
% "unspecified".
%%
H = tf([4, 0, -16],[1, 0, -0.25],-1)
%% Step Response
% Now do a step response
%%
step(H)
%% 
% What about the sequence?
%%
ys = step(H)
%
% Does the sequence match the theory?
%% Impulse Response
% How about impulse response?
%%
impulse(H)
% The plot isn't quite right -- it's a "hold-equivalent" result.
% We don't know values between sampling instants.
%% Sequence?
%%
yi = impulse(H)
%% Stem plot
% To plot this properly, we use a stem plot
%%
stem(yi)
%% Step response as stem plot
% Should do same for step response too
%%
stem(ys)
%% Partial fractions
% Can we use partial fractions for inverse z transforms?
%%
help residue
%% PFE for for inverse z-transform of impulse response
%%
[r,p,k] = residue([4,0,-16],[1,0,-0.25])
%% PFE for inverse z-transform for step response
%%
[r,p,k] = residue(conv([1, 0],[4,0,-16]),conv([1, -1],[1,0,-0.25]))
%
% Do these results match the theory?
%% Another approach
% Use LTI block to define the TF then extract num/den for PFE
%%
U = tf([1, 0], [1, -1], -1)
Y = series(U, H)
% extract numerator & denominator
[num,den] = tfdata(Y,'v')
% get pfe
[r,p,k]=residue(num,den)