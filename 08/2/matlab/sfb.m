%% State feedback in Matlab
% 
% Examples from the Lecture
% Prepared for EGLM03 Modern Control Systems
% by Dr Chris P. Jobling
%% Example 1
A = [-4 0; 0 -11]; B = [1; -1];
p1 = -10+10i;
p2 = -10-10i;
% Use the place method
Kc = place(A,B,[p1, p2])
%%
Ac = A - B*Kc; % can be used in simulation but we need C
[T,Lambda]=eig(Ac);
Lambda
%% Example 2
A = [-15, -44; 1, 0]; B = [1; 0]; C = [0 7]; D = 0;
Kc = place(A,B,[p1, p2])
% simulation
gcl = ss(A-B*Kc,B,C,D)
step(gcl)
title('Closed-Loop Step Response for Example 2')
%% Comparison with Classical Control
syms s
G = 7/((s+4)*(s + 11));
H = 1/7*(5*s + 156);
Gc = G/(1 + G*H);
Gc = simplify(collect(Gc))
%% Ackermann's formula
% Using the formula
A = [1 2; -1 1]; B = [1; -2];
CM = ctrb(A,B); 
%% If controllable
if rank(CM) == 2
    alpha_c = A * A + 2 * A + eye(2);
    K = [0 1] * inv(ctrb(A, B)) * alpha_c
%% Using the function Acker
    P = [-1, -1]; % vector of desired pole locations
    Ka = acker(A, B, P)
%% 
% System response
    Ac = A - B*K;
    gcl = ss(Ac,B,C,D)
    step(gcl)
    title('Closed-Loop Step Response for Example 3')
end